library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--{}reset sachen

entity sortierer is
	generic (
		CNT_OFL : positive := 1000000	; -- Sekundentakt Überlauf (overflow) [hinzugefuegt] es kann sein, dass das hier falsch ist, bzw. zu lang
		TIME_WEG_MAX : positive := 15	; -- maximale Werkstück-Durchlaufzeit auf langem Weg (bei geöffneter Schranke) [hinzugefuegt]
		FWD : std_logic := '0';
		BCK : std_logic := '1';
		RUN : std_logic := '1';
		STP : std_logic := '0';
		WEG_K : std_logic := '0';
		WEG_M : std_logic := '1'
		);

	port (
		reset : in std_logic; -- Key0
		clk   	: in std_logic; --50 MHz
		oe_in 	: in std_logic; -- Switch 9
		opt_sens	: in std_logic; -- optischer Sensor
		ind_sens	: in std_logic; -- induktiv Sensor
		oe_n_out	: out std_logic;
		weiche_out	: out std_logic; -- Weg A / Weg B -Umschaltung  
		motor_pwr_out : out std_logic; -- ...
		motor_dir_out : out std_logic -- Motor Drehrichtung
		);
end entity sortierer;

architecture arch of sortierer is

-- signals
signal cnt : unsigned(20 downto 0); --hinzugefuegt
signal time_s : unsigned(4 downto 0); 
signal weiche : std_logic;
signal motor_pwr : std_logic;
signal motor_dir : std_logic;

type main_state_t is (idle, motorFWD_weicheK, motorFWD_weicheM, resetting); --[hinzugefuegt] {resetting loeschen}
signal main_state, next_main_state : main_state_t;

begin

sort_control : process(clk, reset) is
begin	
	if (reset = '1') then
		next_main_state <= resetting; --[hinzugefuegt] (synchro fehlt) {zeile mit time_s weg, und state auf idle setzen}
		time_s <= "00001";				
	elsif rising_edge(clk) then
		main_state <= next_main_state; -- z_reg
				
		-- fast counter, overflow = 1s 
		if cnt = to_unsigned(CNT_OFL, cnt'length) or main_state = idle then
			cnt <= (others => '0');
		else
			cnt <= cnt + 1;			
		end if;

		-- Sekunden timer		
		if main_state = idle then -- reset timer
			time_s <= (others => '0');	
		elsif cnt = CNT_OFL then
			time_s <= time_s + 1;
		end if;
		
		case main_state is
			when idle => -- warte auf opt_sens hi
				motor_dir <= FWD;
				motor_pwr <= STP;
				weiche <= WEG_K;
				if(opt_sens = '1') then
					next_main_state <= motorFWD_weicheK;
				end if;
			when motorFWD_weicheK => --motor an, warten auf ind_sens
				motor_dir <= FWD;
				motor_pwr <= RUN;
				weiche <= WEG_K;
				if(ind_sens = '1') then
					next_main_state <= motorFWD_weicheM;
				end if;
				if not (time_s < TIME_WEG_MAX) then 
					next_main_state <= idle;
				end if;
			when motorFWD_weicheM => --weiche an zusätzlich anschalten
				weiche <= WEG_M;
				if not (time_s < TIME_WEG_MAX) then 
					next_main_state <= idle;
				end if;
			when resetting => --ruekwaertsgang muss einsynchronisiert werden {kompletten case loeschen}
				motor_dir <= BCK;
				motor_pwr <= RUN;
				if not (time_s < TIME_WEG_MAX) then
					next_main_state <= idle;
				end if;
			when others =>
				next_main_state <= idle;
		end case;
	end if;
	oe_n_out <= not oe_in; -- voltage translator active
	weiche_out <= weiche;
	motor_pwr_out <= motor_pwr;
   motor_dir_out <= motor_dir; 
		
end process sort_control;

end architecture arch;