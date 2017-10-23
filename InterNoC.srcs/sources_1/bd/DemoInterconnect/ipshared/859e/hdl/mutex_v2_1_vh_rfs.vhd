-------------------------------------------------------------------------------
-- pselect.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2001-2010 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        pselect.vhd
--
-- Description:     Parameterizeable peripheral select (address decode).
--                  AValid qualifier comes in on Carry In at bottom 
--                  of carry chain. For version with AValid at top of
--                  carry chain, see pselect_top.vhd.
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--                  pselect.vhd
--
-------------------------------------------------------------------------------
-- Author:          B.L. Tise
--
-- History:
--   BLT            2001-04-10    First Version
--   BLT            2001-04-23    Moved function to this file
--   BLT            2001-05-21    Changed library to MicroBlaze
--   BLT            2001-08-13    Changed pragma to synthesis
--   ALS            2001-10-15    C_BAR is now padded to nearest multiple of 4
--                                to handle lut equations
--   FLO            2002-03-26    Corrected implementation for case where C_AB
--                                is not a multiple of 4 and the C_BAR values
--                                at the pad bits are not '0'.
--                                Removed implementation restriction that
--                                required C_AW = C_BAR'length.
--                                Added assertion to flag invalid generic
--                                combinations.

--   ALS, FLO       2002-04-09   -Implemented XST workaround for the case
--                                that C_AB = 0.
--                               -Removed remnants of earlier
--                                "instantiated-lut" implementation.
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

library unisim;
use unisim.all;

-----------------------------------------------------------------------------
-- Entity section
-----------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Definition of Generics:
--          C_AB            -- number of address bits to decode
--          C_AW            -- width of address bus
--          C_BAR           -- base address of peripheral (peripheral select
--                             is asserted when the C_AB most significant
--                             address bits match the C_AB most significant
--                             C_BAR bits
-- Definition of Ports:
--          A               -- address input
--          AValid          -- address qualifier
--          CS              -- peripheral select
-------------------------------------------------------------------------------

entity pselect is
  
  generic (
    C_AB     : integer := 9;
    C_AW     : integer := 32;
    C_BAR    : std_logic_vector
    );
  port (
    A        : in   std_logic_vector(0 to C_AW-1);
    AValid   : in   std_logic;
    CS       : out  std_logic
    );

end entity pselect;

-----------------------------------------------------------------------------
-- Architecture section
-----------------------------------------------------------------------------

architecture imp of pselect is

  component MUXCY is
    port (
      O  : out std_logic;
      CI : in  std_logic;
      DI : in  std_logic;
      S  : in  std_logic
    );
  end component MUXCY;
   
  attribute INIT        : string;

-----------------------------------------------------------------------------
-- Constant Declarations
-----------------------------------------------------------------------------
  constant  NUM_LUTS    : integer := (C_AB+3)/4;

  -- C_BAR may not be indexed from 0 and may not be ascending;
  -- BAR recasts C_BAR to have these properties.
  constant BAR          : std_logic_vector(0 to C_BAR'length-1) := C_BAR;
  
-----------------------------------------------------------------------------
-- Signal Declarations
-----------------------------------------------------------------------------
  
--signal    lut_out     : std_logic_vector(0 to NUM_LUTS-1);
  signal    lut_out     : std_logic_vector(0 to NUM_LUTS); -- XST workaround

  signal    carry_chain : std_logic_vector(0 to NUM_LUTS);


-------------------------------------------------------------------------------
-- Begin architecture section
-------------------------------------------------------------------------------
begin

--------------------------------------------------------------------------------
-- Check that the passed generics allow for correct implementation.
--------------------------------------------------------------------------------
-- synthesis translate_off
   assert (C_AB <= C_BAR'length) and (C_AB <= C_AW)
   report "pselect generic error: " &
          "(C_AB <= C_BAR'length) and (C_AB <= C_AW)" &
          " does not hold."
   severity failure;
-- synthesis translate_on


--------------------------------------------------------------------------------
-- Build the decoder using the fast carry chain.
--------------------------------------------------------------------------------

carry_chain(0) <= AValid;

XST_WA: if NUM_LUTS > 0 generate              -- workaround for XST; remove this
                                              -- enclosing generate when fixed
GEN_DECODE: for i in 0 to NUM_LUTS-1 generate
  signal   lut_in    : std_logic_vector(3 downto 0);
  signal   invert    : std_logic_vector(3 downto 0);
  begin
    GEN_LUT_INPUTS: for j in 0 to 3 generate
       -- Generate to assign address bits to LUT4 inputs
       GEN_INPUT: if i < NUM_LUTS-1 or j <= ((C_AB-1) mod 4) generate
         lut_in(j) <= A(i*4+j);
         invert(j) <= not BAR(i*4+j);
       end generate;
       -- Generate to assign one to remaining LUT4, pad, inputs
       GEN_ZEROS: if not(i < NUM_LUTS-1 or j <= ((C_AB-1) mod 4)) generate
         lut_in(j) <= '1';
         invert(j) <= '0';
       end generate;
    end generate;

    ---------------------------------------------------------------------------
    -- RTL LUT instantiation
    ---------------------------------------------------------------------------
    lut_out(i) <=  (lut_in(0) xor invert(0)) and
                   (lut_in(1) xor invert(1)) and
                   (lut_in(2) xor invert(2)) and
                   (lut_in(3) xor invert(3));


    MUXCY_I: MUXCY
      port map (
        O  => carry_chain(i+1), --[out]
        CI => carry_chain(i),   --[in]
        DI => '0',              --[in]
        S  => lut_out(i)        --[in]
      );    

end generate GEN_DECODE;
end generate XST_WA;

CS <= carry_chain(NUM_LUTS); -- assign end of carry chain to output;
                             -- if NUM_LUTS=0, then
                             -- CS <= carry_chain(0) <= AValid

end imp;



-------------------------------------------------------------------------------
-- gen_dram.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2001-2010 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Author:          satish
--
-- History:
--   satish  2004-03-24    New Version
--   rikardw 2006-10-19    Single port version
--
-- Description:
-- Code to infer synchronous single port lut ram
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
  
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 

entity Gen_DRAM is 
  generic (
    C_DWIDTH : integer := 32;
    C_AWIDTH : integer := 16
    );    
  port ( 
    clk  : in std_logic; 
    we   : in std_logic; 
    a    : in std_logic_vector(C_AWIDTH-1 downto 0); 
    di   : in std_logic_vector(C_DWIDTH-1 downto 0); 
    do   : out std_logic_vector(C_DWIDTH-1 downto 0)
    ); 
end entity Gen_DRAM; 


architecture syn of Gen_DRAM is 
  type ram_type is array ((2**C_AWIDTH)-1 downto 0) of std_logic_vector ((C_DWIDTH-1) downto 0); 
  -- signal RAM : ram_type := (others => (others => '0')); 
  signal RAM : ram_type;
begin 
  process (clk) 
    begin 
      if (clk'event and clk = '1') then 
          if (we = '1') then 
              RAM(conv_integer(a)) <= di; 
          end if; 
      end if; 
  end process; 
  do <= RAM(conv_integer(a)); 
end syn; 


-------------------------------------------------------------------------------
-- multi_channel_register.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2001-2010 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        multi_channel_register.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              multi_channel_register.vhd
--                gen_dram.vhd
--
-------------------------------------------------------------------------------
-- Author:          rikardw
--
-- History:
--   rikardw  2006-10-19    First Version
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;


library Unisim;
use Unisim.vcomponents.all;

library mutex_v2_1_8;
use mutex_v2_1_8.Gen_DRAM;


entity multi_channel_register is
  generic (
    C_NUM_CHANNELS    : natural := 2;
    C_AWIDTH          : natural := 4;
    C_DWIDTH          : natural := 8
  );
  port (
    -- Clock and reset signals.
    Clk               : in  std_logic;
    Rst               : in  std_logic;
    
    -- Control signals.
    Write_Strobe      : in  std_logic;
    Channel           : in  std_logic_vector(C_AWIDTH - 1 downto 0);
    Data_In           : in  std_logic_vector(C_DWIDTH - 1 downto 0);
    Data_Out          : out std_logic_vector(C_DWIDTH - 1 downto 0)
  );
end entity multi_channel_register;



architecture IMP of multi_channel_register is

  -----------------------------------------------------------------------------
  -- Component declaration
  -----------------------------------------------------------------------------
  component Gen_DRAM is 
    generic (
      C_DWIDTH : integer := 32;
      C_AWIDTH : integer := 16
      );    
    port ( 
      clk  : in std_logic; 
      we   : in std_logic; 
      a    : in std_logic_vector(C_AWIDTH-1 downto 0); 
      di   : in std_logic_vector(C_DWIDTH-1 downto 0); 
      do   : out std_logic_vector(C_DWIDTH-1 downto 0)
      ); 
  end component Gen_DRAM; 
  
  
begin  -- architecture IMP

  -----------------------------------------------------------------------------
  -- Single channel storage
  -----------------------------------------------------------------------------
  Use_Single_Ch_Reg: if( C_NUM_CHANNELS = 1 ) generate
  begin
    Store_Cnt: process(Clk)
    begin
      if( Clk'event and Clk = '1' ) then
        if( Rst = '1' ) then
          Data_Out   <= (others=>'0');        
          
        elsif( Write_Strobe = '1' ) then
          Data_Out   <= Data_In;
          
        end if;
      end if;
    end process Store_Cnt;
    
  end generate Use_Single_Ch_Reg;
  
  
  -----------------------------------------------------------------------------
  -- Multiple channel storage
  -----------------------------------------------------------------------------
  Use_Multi_Ch_Reg: if( C_NUM_CHANNELS > 1 ) generate
  begin
    -- Counter storage.
    RAM_Storage: Gen_DRAM 
      generic map(
        C_DWIDTH => C_DWIDTH,
        C_AWIDTH => C_AWIDTH
      )
      port map( 
        clk  => Clk,
        we   => Write_Strobe,
        a    => Channel,
        di   => Data_In,
        do   => Data_Out
      ); 
    
  end generate Use_Multi_Ch_Reg;
  
  
end architecture IMP;



-------------------------------------------------------------------------------
-- multi_channel_mutex.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2001-2010 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        multi_channel_mutex.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- Structure:   
--              multi_channel_mutex.vhd
--                multi_channel_register.vhd
--                  gen_dram.vhd
--
-------------------------------------------------------------------------------
-- Author:          rikardw
--
-- History:
--   rikardw  2006-10-19    First Version
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;


library Unisim;
use Unisim.vcomponents.all;

library mutex_v2_1_8;
use mutex_v2_1_8.multi_channel_register;


entity multi_channel_mutex is
  generic (
    C_NUM_CHANNELS    : natural := 2;
    C_OWNER_ID_WIDTH  : natural := 0;
    C_AWIDTH          : natural := 4;
    C_DWIDTH          : natural := 8
  );
  port (
    -- Clock and reset signals.
    Clk               : in  std_logic;
    Rst               : in  std_logic;
    
    -- Control signals.
    Write_Strobe      : in  std_logic;
    Channel           : in  std_logic_vector(C_AWIDTH - 1 downto 0);
    Data_In           : in  std_logic_vector(C_DWIDTH + C_OWNER_ID_WIDTH - 1 downto 0);
    New_Mutex_Out     : out std_logic_vector(C_DWIDTH + C_OWNER_ID_WIDTH - 1 downto 0);
    Mutex_Out         : out std_logic_vector(C_DWIDTH + C_OWNER_ID_WIDTH - 1 downto 0)
  );
end entity multi_channel_mutex;



architecture IMP of multi_channel_mutex is
  

  -----------------------------------------------------------------------------
  -- Component declaration
  -----------------------------------------------------------------------------
  component multi_channel_register is
    generic (
      C_NUM_CHANNELS    : natural := 2;
      C_AWIDTH          : natural := 4;
      C_DWIDTH          : natural := 8
    );
    port (
      -- Clock and reset signals.
      Clk               : in  std_logic;
      Rst               : in  std_logic;
      
      -- Control signals.
      Write_Strobe      : in  std_logic;
      Channel           : in  std_logic_vector(C_AWIDTH - 1 downto 0);
      Data_In           : in  std_logic_vector(C_DWIDTH - 1 downto 0);
      Data_Out          : out std_logic_vector(C_DWIDTH - 1 downto 0)
    );
  end component multi_channel_register;
  
  
  -----------------------------------------------------------------------------
  -- Signal declaration
  -----------------------------------------------------------------------------
  signal Mutex_I      : std_logic_vector(C_DWIDTH + C_OWNER_ID_WIDTH - 1 downto 0);
  signal Mutex_New    : std_logic_vector(C_DWIDTH + C_OWNER_ID_WIDTH - 1 downto 0);
  

begin  -- architecture IMP

  -----------------------------------------------------------------------------
  -- Channel Counter Storage
  -----------------------------------------------------------------------------
  Mutex_Store: multi_channel_register
    generic map(
      C_NUM_CHANNELS    => C_NUM_CHANNELS,
      C_AWIDTH          => C_AWIDTH,
      C_DWIDTH          => C_DWIDTH + C_OWNER_ID_WIDTH
    )
    port map(
      -- Clock and reset signals.
      Clk               => Clk,
      Rst               => Rst,
      
      -- Control signals.
      Write_Strobe      => Write_Strobe,
      Channel           => Channel,
      Data_In           => Mutex_New,
      Data_Out          => Mutex_I
    );
  
  
  -----------------------------------------------------------------------------
  -- Write to lock and pure write to release function
  -----------------------------------------------------------------------------
  Write_2_Lock: process(Data_In, Mutex_I)
    variable OwnerMatched : boolean;
  begin
    -- Check if the owner is writing.
    if( C_OWNER_ID_WIDTH > 0 ) then
      OwnerMatched  := Mutex_I(C_OWNER_ID_WIDTH + C_DWIDTH - 1 downto C_DWIDTH) = 
                       Data_In(C_OWNER_ID_WIDTH + C_DWIDTH - 1 downto C_DWIDTH);
    else
      OwnerMatched  := true;
    end if;
  
    -- Update mutex accordingly.
    if( Mutex_I(0) /= '1' or OwnerMatched ) then
      -- Write new value.
      if( Data_In(0) = '0' ) then
        Mutex_New <= (others=>'0');
      else
        Mutex_New <= Data_In;
      end if;
      
    else
      -- Keep old value.
      Mutex_New <= Mutex_I;
      
    end if;
  
  end process Write_2_Lock;

  
  -----------------------------------------------------------------------------
  -- Rename output signals
  -----------------------------------------------------------------------------
  New_Mutex_Out <= Mutex_New;
  Mutex_Out     <= Mutex_I;
  
    
end architecture IMP;



-------------------------------------------------------------------------------
-- mutex_core.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2001-2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        mutex_core.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              mutex_core.vhd
--
-------------------------------------------------------------------------------
-- Author:          rikardw
--
-- History:
--   rikardw  2006-10-19    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mutex_core is
  generic (
    -- General.
    C_FAMILY                : string                := "virtex7";
    
    -- Mutex specific.
    C_NUM_INTERFACE         : integer range 1 to 16 := 1;  -- Number of interfaces to access Mutexes.
    C_ENABLE_USER           : integer range 0 to 1  := 1;  -- If USER register is available.
    C_OWNER_ID_WIDTH        : integer range 0 to 31 := 8;  -- Number of bits for id number.
    C_HW_ID_WIDTH           : integer range 1 to 31 := 8;  -- Number of bits for hardware id number.
    C_ENABLE_HW_PROT        : integer range 0 to 1  := 0;  -- If hardware security should be used.
    C_NUM_MUTEX             : integer               := 16; -- Number of mutexes.
    C_MUTEX_NUMBER          : integer               := 0;  -- Mutex number.
    C_AWIDTH                : integer               := 8;  -- Address bits including register offset.
    C_REGISTER_WIDTH        : integer               := 4;  -- Width of register offset.
    C_DWIDTH                : integer               := 32; -- Width of data bus.
    C_DWIDTH_USER_REG       : integer               := 32; -- Width of user data.
    C_DWIDTH_MUTEX          : integer               := 1   -- Width of mutex field (usually 1).
  );
  port (
    -- System signals
    Clk                     : in  std_logic;
    Rst                     : in  std_logic;
    
    -- Bus slave signals
    Mutex_Access            : in  std_logic_vector(0 to C_NUM_INTERFACE - 1);
    Mutex_RnW               : in  std_logic_vector(0 to C_NUM_INTERFACE - 1);
    Mutex_HW_Id             : in  std_logic_vector(0 to C_NUM_INTERFACE * C_HW_ID_WIDTH - 1);
    Mutex_Addr              : in  std_logic_vector(0 to C_NUM_INTERFACE * C_AWIDTH - 1);
    Mutex_Wr_Data           : in  std_logic_vector(0 to C_NUM_INTERFACE * C_DWIDTH - 1);
    Mutex_Rd_Data           : out std_logic_vector(0 to C_DWIDTH - 1);
    Mutex_Ack               : out std_logic_vector(0 to C_NUM_INTERFACE - 1)
  );
end entity mutex_core;


library unisim;
use unisim.all;



architecture IMP of mutex_core is

  -----------------------------------------------------------------------------
  -- Function declaration
  -----------------------------------------------------------------------------
  function Get_Num_Bits(data : natural) return natural is
    variable num_bits : natural:= 1;
  begin
    while( data > 2**num_bits ) loop
      num_bits := num_bits + 1;
    end loop;
    
    return num_bits;
  end function Get_Num_Bits;
  
  
  
  -----------------------------------------------------------------------------
  -- Constant declaration
  -----------------------------------------------------------------------------
  
  
  -----------------------------------------------------------------------------
  -- Component declaration
  -----------------------------------------------------------------------------
  component multi_channel_mutex is
    generic (
      C_NUM_CHANNELS    : natural := 2;
      C_OWNER_ID_WIDTH  : natural := 0;
      C_AWIDTH          : natural := 4;
      C_DWIDTH          : natural := 8
    );
    port (
      -- Clock and reset signals.
      Clk               : in  std_logic;
      Rst               : in  std_logic;
      
      -- Control signals.
      Write_Strobe      : in  std_logic;
      Channel           : in  std_logic_vector(C_AWIDTH - 1 downto 0);
      Data_In           : in  std_logic_vector(C_DWIDTH + C_OWNER_ID_WIDTH - 1 downto 0);
      New_Mutex_Out     : out std_logic_vector(C_DWIDTH + C_OWNER_ID_WIDTH - 1 downto 0);
      Mutex_Out         : out std_logic_vector(C_DWIDTH + C_OWNER_ID_WIDTH - 1 downto 0)
    );
  end component multi_channel_mutex;
  
  component multi_channel_register is
    generic (
      C_NUM_CHANNELS    : natural := 2;
      C_AWIDTH          : natural := 4;
      C_DWIDTH          : natural := 8
    );
    port (
      -- Clock and reset signals.
      Clk               : in  std_logic;
      Rst               : in  std_logic;
      
      -- Control signals.
      Write_Strobe      : in  std_logic;
      Channel           : in  std_logic_vector(C_AWIDTH - 1 downto 0);
      Data_In           : in  std_logic_vector(C_DWIDTH - 1 downto 0);
      Data_Out          : out std_logic_vector(C_DWIDTH - 1 downto 0)
    );
  end component multi_channel_register;
  
  
  -----------------------------------------------------------------------------
  -- Signal declaration
  -----------------------------------------------------------------------------
  -- Internal arbitrated signals
  signal Mutex_Access_I           : std_logic_vector(0 to C_NUM_INTERFACE - 1);
  signal Mutex_RnW_I              : std_logic;
  signal Mutex_HW_Id_I            : std_logic_vector(0 to C_HW_ID_WIDTH + Get_Num_Bits(C_NUM_INTERFACE) - 1);
  signal Mutex_Addr_I             : std_logic_vector(0 to C_AWIDTH - 1);
  signal Mutex_Wr_Data_I          : std_logic_vector(0 to C_DWIDTH - 1);
  signal Mutex_Rd_Data_I          : std_logic_vector(0 to C_DWIDTH - 1);
  signal Mutex_Ack_I              : std_logic;

  signal Access_In_Progress       : std_logic;
  signal Write_Strobe_Mutex       : std_logic;
  signal Write_Strobe_User        : std_logic;
  signal Second_Cycle             : std_logic;
  signal Read_Data_Type           : std_logic_vector(0 to 1);
  
  -- Configuration register related.
  signal User_Reg                 : std_logic_vector(0 to C_DWIDTH_USER_REG - 1);
  signal User_Reg_I               : std_logic_vector(0 to C_DWIDTH - 1);
  
  -- Mutex related.
  signal Mutex                    : std_logic_vector(0 to C_DWIDTH_MUTEX + C_OWNER_ID_WIDTH - 1);
  signal Mutex_I                  : std_logic_vector(0 to C_DWIDTH - 1);
  
  
begin  -- architecture IMP


  -----------------------------------------------------------------------------
  -- Interface arbitration
  -----------------------------------------------------------------------------
  Using_SingleIf_Mutex: if C_NUM_INTERFACE = 1 generate
  begin
    -- Only one interface to all Mutexes.
    -- => Simply connect w/o any arbitration.
    Access_In_Progress        <= Mutex_Access(0);
    Mutex_Access_I            <= Mutex_Access(0 to 0);
    Mutex_RnW_I               <= Mutex_RnW(0);
    Mutex_HW_Id_I             <= Mutex_HW_Id(0 to C_HW_ID_WIDTH - 1) & '0';
    Mutex_Addr_I              <= Mutex_Addr(0 to C_AWIDTH - 1);
    Mutex_Wr_Data_I           <= Mutex_Wr_Data(0 to C_DWIDTH - 1);
    Mutex_Ack                 <= (others=>Mutex_Ack_I);
    
  end generate Using_SingleIf_Mutex;
  
  -- Multiple interfaces.
  Using_MultiIf_Mutex: if C_NUM_INTERFACE > 1 generate
  begin
    Interface_Arbitration: process(Clk)
    begin
      if( Clk'event and Clk = '1' ) then
        if( Rst = '1' ) then
          Access_In_Progress  <= '0';
          Mutex_Access_I      <= (others=>'0');
          Mutex_RnW_I         <= '0';
          Mutex_HW_Id_I       <= (others=>'0');
          Mutex_Addr_I        <= (others=>'0');
          Mutex_Wr_Data_I     <= (others=>'0');
          
        else
          if( Access_In_Progress = '1' ) then
            if( ( Mutex_Access_I and Mutex_Access ) = (Mutex_Access'range=>'0') ) then
              -- Selected interface has acknowledged that this end 
              -- has performed all its tasks. 
              -- => Get ready for the next access.
              Access_In_Progress  <= '0';
              Mutex_Access_I      <= (others=>'0');
              
            end if;
          
          else
            for I in natural range C_NUM_INTERFACE - 1 downto 0 loop
              -- Loop in ascending priority order.
            
              if( Mutex_Access(I) = '1' ) then
                -- This interface wants to access a mutexes in this bank.
                -- => Forward information to the rest of the core.
                
                Access_In_Progress  <= '1';
                Mutex_Access_I      <= (others=>'0');
                Mutex_Access_I(I)   <= '1';
                Mutex_RnW_I         <= Mutex_RnW(I);
                Mutex_HW_Id_I       <= Mutex_HW_Id(C_HW_ID_WIDTH * I to C_HW_ID_WIDTH * (I + 1) - 1) &
                                       std_logic_vector(to_unsigned(I, Get_Num_Bits(C_NUM_INTERFACE)));
                Mutex_Addr_I        <= Mutex_Addr(C_AWIDTH * I to C_AWIDTH * (I + 1) - 1);
                Mutex_Wr_Data_I     <= Mutex_Wr_Data(C_DWIDTH * I to C_DWIDTH * (I + 1) - 1);
                
              end if;
            end loop;
          end if;
          
          -- Assign the Acknowledge signal.
          Mutex_Ack <= (Mutex_Ack'range=>Mutex_Ack_I) and Mutex_Access_I and Mutex_Access;
          
        end if;
      end if;
    end process Interface_Arbitration;
    
  end generate Using_MultiIf_Mutex;


  -----------------------------------------------------------------------------
  -- Access control
  -----------------------------------------------------------------------------
  Access_Handle: process(Clk)
  begin
    if( Clk'event and Clk = '1' ) then
      if( Rst = '1' ) then
        -- Reset.
        Write_Strobe_User   <= '0';
        Write_Strobe_Mutex  <= '0';
        Mutex_Ack_I         <= '0';
        Second_Cycle        <= '0';
        Read_Data_Type      <= (others=>'0');
        
      else
        -- Generate second cycle.
        Second_Cycle        <= (not Second_Cycle      ) and Access_In_Progress and (not Mutex_Ack_I);
        
        -- Default assignment.
        Write_Strobe_User   <= '0';
        Write_Strobe_Mutex  <= '0';
        
        -- Control read data mux.
        Read_Data_Type      <= Mutex_Addr_I(Mutex_Addr_I'right - 1 - 2 to Mutex_Addr_I'right - 2);
        
        -- Create write strobes for resources.
        if( Mutex_Addr_I(Mutex_Addr_I'right - 2) = '0' ) then
          -- Access mutex registers.
          Write_Strobe_Mutex  <= Access_In_Progress and (not Mutex_RnW_I);
        else
          -- Access Configuration/Address register.
          if( C_ENABLE_USER /= 0 ) then
            Write_Strobe_User <= Access_In_Progress and (not Mutex_RnW_I);
          end if;
        end if;
        
        -- Finish access.
        Mutex_Ack_I         <= Second_Cycle or (Access_In_Progress and (not Mutex_RnW_I)) or (Mutex_Ack_I and Access_In_Progress);
        
      end if;
    end if;
  end process Access_Handle;
  
  
  -----------------------------------------------------------------------------
  -- Instantiating MUTEX Register
  -----------------------------------------------------------------------------
  Using_HW_Protection: if( C_ENABLE_HW_PROT /= 0 ) generate
    signal Mutex_Wr_Data_II : std_logic_vector(0 to C_OWNER_ID_WIDTH + C_HW_ID_WIDTH + Get_Num_Bits(C_NUM_INTERFACE) + C_DWIDTH_MUTEX -1);
    signal Mutex_II         : std_logic_vector(0 to C_OWNER_ID_WIDTH + C_HW_ID_WIDTH + Get_Num_Bits(C_NUM_INTERFACE) + C_DWIDTH_MUTEX -1);
  begin
    Protected_Mutex_Inst: multi_channel_mutex
      generic map(
        C_NUM_CHANNELS    => C_NUM_MUTEX,
        C_OWNER_ID_WIDTH  => C_OWNER_ID_WIDTH + C_HW_ID_WIDTH + Get_Num_Bits(C_NUM_INTERFACE),
        C_AWIDTH          => C_AWIDTH - C_REGISTER_WIDTH,
        C_DWIDTH          => C_DWIDTH_MUTEX
      )
      port map(
        -- Clock and reset signals.
        Clk               => Clk,
        Rst               => Rst,
        
        -- Control signals.
        Write_Strobe      => Write_Strobe_Mutex,
        Channel           => Mutex_Addr_I(0 to C_AWIDTH - C_REGISTER_WIDTH - 1),
        Data_In           => Mutex_Wr_Data_II,
        New_Mutex_Out     => open,
        Mutex_Out         => Mutex_II
      );
      
    -- Append and remove hardware information invisibly.
    Mutex_Wr_Data_II  <= Mutex_HW_Id_I & Mutex_Wr_Data_I(C_DWIDTH - C_DWIDTH_MUTEX - C_OWNER_ID_WIDTH to C_DWIDTH - 1);
    Mutex             <= Mutex_II(C_HW_ID_WIDTH + Get_Num_Bits(C_NUM_INTERFACE) to Mutex_II'right);
  end generate Using_HW_Protection;
  
  No_HW_Protection: if( C_ENABLE_HW_PROT = 0 ) generate
  begin
    Normal_Mutex_Inst: multi_channel_mutex
      generic map(
        C_NUM_CHANNELS    => C_NUM_MUTEX,
        C_OWNER_ID_WIDTH  => C_OWNER_ID_WIDTH,
        C_AWIDTH          => C_AWIDTH - C_REGISTER_WIDTH,
        C_DWIDTH          => C_DWIDTH_MUTEX
      )
      port map(
        -- Clock and reset signals.
        Clk               => Clk,
        Rst               => Rst,
        
        -- Control signals.
        Write_Strobe      => Write_Strobe_Mutex,
        Channel           => Mutex_Addr_I(0 to C_AWIDTH - C_REGISTER_WIDTH - 1),
        Data_In           => Mutex_Wr_Data_I(C_DWIDTH - C_DWIDTH_MUTEX - C_OWNER_ID_WIDTH to C_DWIDTH - 1),
        New_Mutex_Out     => open,
        Mutex_Out         => Mutex
      );
  end generate No_HW_Protection;
  
  
  
  -----------------------------------------------------------------------------
  -- Instantiating USER Register
  -----------------------------------------------------------------------------
  Using_User_Reg: if( C_ENABLE_USER /= 0 ) generate
  begin
    User_Reg_Inst: multi_channel_register
      generic map(
        C_NUM_CHANNELS    => C_NUM_MUTEX,
        C_AWIDTH          => C_AWIDTH - C_REGISTER_WIDTH,
        C_DWIDTH          => C_DWIDTH_USER_REG
      )
      port map(
        -- Clock and reset signals.
        Clk               => Clk,
        Rst               => Rst,
        
        -- Control signals.
        Write_Strobe      => Write_Strobe_User,
        Channel           => Mutex_Addr_I(0 to C_AWIDTH - C_REGISTER_WIDTH - 1),
        Data_In           => Mutex_Wr_Data_I(C_DWIDTH - C_DWIDTH_USER_REG to C_DWIDTH-1),
        Data_Out          => User_Reg
      );
  end generate Using_User_Reg;
  
  No_User_Reg: if( C_ENABLE_USER = 0 ) generate
  begin
    User_Reg  <= (others=>'0');
  end generate No_User_Reg;
  

  -----------------------------------------------------------------------------
  -- Read multiplexer
  -----------------------------------------------------------------------------
  ReadDataMux: process(Read_Data_Type, User_Reg, Mutex)
  begin
    -- Extend the data to full width.
--    User_Reg_I                                             <= (others=>'0');
--    User_Reg_I(C_DWIDTH - C_DWIDTH_USER_REG to C_DWIDTH-1) <= User_Reg;
--    Mutex_I                                                             <= (others=>'0');
--    Mutex_I(C_DWIDTH - C_DWIDTH_MUTEX - C_OWNER_ID_WIDTH to C_DWIDTH-1) <= Mutex;
    
    -- Default assignment.
    Mutex_Rd_Data_I  <= (others=>'0');
    
    case Read_Data_Type is
    when "00" =>
      Mutex_Rd_Data_I(C_DWIDTH - C_DWIDTH_MUTEX - C_OWNER_ID_WIDTH to C_DWIDTH-1) <= Mutex;
    when "01" =>
      Mutex_Rd_Data_I(C_DWIDTH - C_DWIDTH_USER_REG to C_DWIDTH-1) <= User_Reg;
    when others =>
      -- Reserved registers.
      null;
    end case;
  end process ReadDataMux;

  ReadDataMux_DFF: process(Clk)
  begin
    if( Clk'event and Clk = '1' ) then
      if( Rst = '1' ) then
        Mutex_Rd_Data <= (others=>'0');
        
      elsif( Second_Cycle = '1' ) then
        Mutex_Rd_Data <= Mutex_Rd_Data_I;
      end if;
    end if;
  end process ReadDataMux_DFF;
  

end architecture IMP;





-------------------------------------------------------------------------------
-- axi_decode.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2001-2010 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        axi_decode.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_decode.vhd
--
-------------------------------------------------------------------------------
-- Author:          rikardw
--
-- History:
--   rikardw  2007-03-27    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;


entity axi_decode is
  generic (
    -- AXI4-Lite slave generics
    C_S_AXI_BASEADDR        : std_logic_vector       := X"FFFF_FFFF";
    C_S_AXI_HIGHADDR        : std_logic_vector       := X"0000_0000";
    C_S_AXI_ADDR_WIDTH      : integer                := 32;
    C_S_AXI_DATA_WIDTH      : integer                := 32;
    
    C_ASYNC_CLKS            : integer range 0 to  1  := 0;
    C_NUM_SYNC_FF           : integer range 1 to  8  := 2;  -- Number of cycles to synchronize to new clock domain.
    C_HW_ID_WIDTH           : integer range 1 to 31  := 8;  -- Number of bits for hardware id number.
    C_AWIDTH                : integer                := 8;  -- Address bits including register offset.
    C_DWIDTH                : integer                := 32  -- Width of data bus.
  );
  port (
    -- AXI4-Lite SLAVE SINGLE INTERFACE
    S_AXI_ACLK              : in  std_logic;
    S_AXI_ARESETN           : in  std_logic;
    S_AXI_AWADDR            : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_AWVALID           : in  std_logic;
    S_AXI_AWREADY           : out std_logic;
    S_AXI_WDATA             : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_WSTRB             : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI_WVALID            : in  std_logic;
    S_AXI_WREADY            : out std_logic;
    S_AXI_BRESP             : out std_logic_vector(1 downto 0);
    S_AXI_BVALID            : out std_logic;
    S_AXI_BREADY            : in  std_logic;
    S_AXI_ARADDR            : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_ARVALID           : in  std_logic;
    S_AXI_ARREADY           : out std_logic;
    S_AXI_RDATA             : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_RRESP             : out std_logic_vector(1 downto 0);
    S_AXI_RVALID            : out std_logic;
    S_AXI_RREADY            : in  std_logic;
    
    -- Mutex signals.
    Mutex_Clk               : in  std_logic;
    Mutex_Rst               : in  std_logic;
    Mutex_Access            : out std_logic;
    Mutex_RnW               : out std_logic;
    Mutex_HW_Id             : out std_logic_vector(0 to C_HW_ID_WIDTH - 1);
    Mutex_Addr              : out std_logic_vector(0 to C_AWIDTH - 1);
    Mutex_Wr_Data           : out std_logic_vector(0 to C_DWIDTH - 1);
    Mutex_Rd_Data           : in  std_logic_vector(0 to C_DWIDTH - 1);
    Mutex_Ack               : in  std_logic
  );
end entity axi_decode;

library unisim;
use unisim.vcomponents.all;

library mutex_v2_1_8;
use mutex_v2_1_8.all;



architecture IMP of axi_decode is

  -----------------------------------------------------------------------------
  -- Function declaration
  -----------------------------------------------------------------------------

  
  -----------------------------------------------------------------------------
  -- Constant declaration
  -----------------------------------------------------------------------------

  
  -----------------------------------------------------------------------------
  -- Component declaration
  -----------------------------------------------------------------------------


  -----------------------------------------------------------------------------
  -- Signal declaration
  -----------------------------------------------------------------------------
  signal valid_read_data        : std_logic;
  signal new_write_access_cmb   : std_logic;
  signal new_read_access_cmb    : std_logic;
  signal new_write_access       : std_logic;
  signal new_read_access        : std_logic;
  signal end_write              : std_logic;  -- Write cycle end.
  signal end_read               : std_logic;  -- Read cycle end.
  signal completed_write        : std_logic;  -- Write response acknowledged.
  signal completed_read         : std_logic;  -- Read response acknowledged.
  signal access_end             : std_logic;  -- Access is completed.
  
  signal Mutex_Access_I         : std_logic;
  signal Mutex_RnW_I            : std_logic;
  signal Mutex_HW_Id_I          : std_logic_vector(0 to C_HW_ID_WIDTH - 1);
  signal Mutex_Addr_I           : std_logic_vector(0 to C_AWIDTH - 1);
  signal Mutex_Wr_Data_I        : std_logic_vector(0 to C_DWIDTH - 1);
  signal Mutex_Rd_Data_I        : std_logic_vector(C_DWIDTH - 1 downto 0);
  signal Mutex_Ack_I            : std_logic;
  
  
begin  -- architecture IMP

  -----------------------------------------------------------------------------
  -- Handling the AXI4-Lite bus interface (AR/AW/W)
  -----------------------------------------------------------------------------
  
  -- Detect new transaction.
  -- Write has priority. 
  -- Make sure new write is blocked if it arrives after a read is acknowledged (prior to Mutex_Access_I is set).
  new_write_access_cmb  <= (not Mutex_Access_I) and (not Mutex_Ack_I) and S_AXI_AWVALID and S_AXI_WVALID and 
                           (not new_read_access);
  new_read_access_cmb   <= (not Mutex_Access_I) and (not Mutex_Ack_I) and S_AXI_ARVALID and 
                           (not new_write_access_cmb);
  
  Start_of_Transfer_Control : process (S_AXI_ACLK) is
  begin  -- process End_of_Transfer_Control
    if S_AXI_ACLK'event and S_AXI_ACLK = '1' then   -- rising clock edge
      if S_AXI_ARESETN = '0' then                   -- synchronous reset (active low)
        new_write_access <= '0';
        new_read_access  <= '0';
      else
        -- Make sure it is a one cycle pulse only.
        new_write_access <= new_write_access_cmb and not new_write_access;
        new_read_access  <= new_read_access_cmb and not new_read_access;
      end if;
    end if;
  end process Start_of_Transfer_Control;

  -- Acknowledge new transaction.
  S_AXI_AWREADY     <= new_write_access;
  S_AXI_WREADY      <= new_write_access;
  S_AXI_ARREADY     <= new_read_access;
  
  -- Capture new access.
  AccessAck: process (S_AXI_ACLK) is
  begin  -- process AddrAck
    if S_AXI_ACLK'event and S_AXI_ACLK = '1' then     -- rising clock edge
      if S_AXI_ARESETN = '0' then                     -- synchronous reset (active low)
        Mutex_Access_I  <= '0';
        Mutex_RnW_I     <= '0';
        Mutex_Addr_I    <= (others=>'0');
        Mutex_HW_Id_I   <= (others=>'0');
        Mutex_Wr_Data_I <= (others=>'0');
      else
        if( new_write_access = '1' or new_read_access = '1' ) then
          -- Get data for new access.
          if( new_write_access = '1' ) then
            Mutex_Addr_I    <= S_AXI_AWADDR(C_AWIDTH-1 downto 0);
          else
            Mutex_Addr_I    <= S_AXI_ARADDR(C_AWIDTH-1 downto 0);
          end if;
          
          Mutex_Wr_Data_I <= S_AXI_WDATA(C_DWIDTH-1 downto 0);
          Mutex_HW_Id_I   <= (others=>'0');
          Mutex_RnW_I     <= new_read_access;
          Mutex_Access_I  <= '1';
          
        elsif( access_end = '1' ) then
          Mutex_Access_I  <= '0';
          
        end if;
      end if;
    end if;
  end process AccessAck;
  
  
  -----------------------------------------------------------------------------
  -- Handling the AXI4-Lite bus interface (B/R)
  -----------------------------------------------------------------------------
  
  End_of_Transfer_Control : process (S_AXI_ACLK) is
  begin  -- process End_of_Transfer_Control
    if S_AXI_ACLK'event and S_AXI_ACLK = '1' then   -- rising clock edge
      if S_AXI_ARESETN = '0' then                   -- synchronous reset (active low)
        end_write   <= '0';
        end_read    <= '0';
      else
        if( completed_write = '1' ) then
          end_write   <= '0';
        elsif( Mutex_Access_I = '1' and Mutex_Ack_I = '1' and Mutex_RnW_I = '0' ) then
          end_write   <= '1';
        end if;
        
        if( completed_read = '1' ) then
          end_read    <= '0';
        elsif( valid_read_data = '1' ) then
          end_read    <= '1';
        end if;
      end if;
    end if;
  end process End_of_Transfer_Control;
  
  valid_read_data <= Mutex_Access_I and Mutex_Ack_I and Mutex_RnW_I;

  S_AXI_BVALID    <= end_write;
  S_AXI_RVALID    <= end_read;
  
  S_AXI_BRESP     <= (others=>'0');
  S_AXI_RRESP     <= (others=>'0');
  
  completed_write <= end_write and S_AXI_BREADY;
  completed_read  <= end_read  and S_AXI_RREADY;
  access_end      <= completed_write or completed_read;
  
  Read_Align: process (Mutex_Rd_Data) is
  begin  -- process Read_Mux
    Mutex_Rd_Data_i                         <= (others=>'0');
    Mutex_Rd_Data_i(C_DWIDTH - 1 downto 0)  <= Mutex_Rd_Data;
  end process Read_Align;

  Not_All_32_Bits_Are_Used: if (C_DWIDTH < C_S_AXI_DATA_WIDTH) generate
  begin
    S_AXI_RDATA(C_S_AXI_DATA_WIDTH-1 downto C_S_AXI_DATA_WIDTH - C_DWIDTH)  <= (others=>'0');
  end generate Not_All_32_Bits_Are_Used;

  S_AXI_RDATA_DFF : for I in C_DWIDTH - 1 downto 0 generate
  begin
    S_AXI_RDATA_FDRE : FDRE
      port map (
        Q  => S_AXI_RDATA(I),                       -- [out std_logic]
        C  => S_AXI_ACLK,                           -- [in  std_logic]
        CE => valid_read_data,                      -- [in  std_logic]
        D  => Mutex_Rd_Data_i(I),                   -- [in  std_logic]
        R  => completed_read);                      -- [in  std_logic]
  end generate S_AXI_RDATA_DFF;
  
  
  -----------------------------------------------------------------------------
  -- Domain synchronization
  -----------------------------------------------------------------------------
  -- Always move the data signals directly accross.
  -- Sync signals will guarantee safe crossing.
  Mutex_RnW       <= Mutex_RnW_I;
  Mutex_HW_Id     <= Mutex_HW_Id_I;
  Mutex_Addr      <= Mutex_Addr_I;
  Mutex_Wr_Data   <= Mutex_Wr_Data_I;
  Mutex_Rd_Data_I <= Mutex_Rd_Data;
    
  No_Crossing: if( C_ASYNC_CLKS = 0 ) generate
  begin
    -- No need to synchronize.
    Mutex_Access    <= Mutex_Access_I;
    Mutex_Ack_I     <= Mutex_Ack;
    
  end generate No_Crossing;

  Domain_Crossing: if( C_ASYNC_CLKS /= 0 ) generate
  
    signal Mutex_Access_d   : std_logic_vector(0 to C_NUM_SYNC_FF);
    signal Mutex_Ack_d      : std_logic_vector(0 to C_NUM_SYNC_FF);
    signal S_AXI_ARESET     : std_logic;
    
--    attribute ASYNC_REG                   : string;
--    attribute ASYNC_REG of Mutex_Access_d : signal is "TRUE";
--    attribute ASYNC_REG of Mutex_Ack_d    : signal is "TRUE";
    
  begin
    -- Handle transfer of asynchronous interface sync signal transfer
    -- with unknown clock relation.
    -- 
    -- C_NUM_SYNC_FF = 2 (default):
    -- 
    -- MutexClk -------+-----+-----------+
    --                 |     |           |
    --                 |     |      +---------+
    -- Event ----FF----FF----FF---->| Mutex   |
    --           |                  |         |
    -- WrData ---FF---------------->|         |
    --           |                  |         |
    -- IfClk ----+-----+-----+      |         |
    --                 |     |      |         |
    -- Ack <-----------FF----FF-----|         |
    --                              |         |
    -- RdData <---------------------|         |
    --                              +---------+
    --
    -- 
    -- General case for C_NUM_SYNC_FF:
    -- 
    -- MutexClk -------+----------------+
    --                 |                |
    --                 |            +---------+
    -- Event ----FF----(FF x n)---->| Mutex   |
    --           |                  |         |
    -- WrData ---FF---------------->|         |
    --           |                  |         |
    -- IfClk ----+-----+            |         |
    --                 |            |         |
    -- Ack <-----------(FF x n)-----|         |
    --                              |         |
    -- RdData <---------------------|         |
    --                              +---------+
    --
    
    S_AXI_ARESET  <= not S_AXI_ARESETN;
  
    -- Move the out bound access signal to the common domain.
    Mutex_Access_d(0)  <= Mutex_Access_I;
    Cross_Out: for I in 1 to C_NUM_SYNC_FF generate
    begin
      Block_Gen: block
        attribute ASYNC_REG : string;
        attribute ASYNC_REG of FDR_INST : label is "TRUE";
      begin
        FDR_INST: FDR
          port map (
            Q  => Mutex_Access_d(I),
            C  => Mutex_Clk,
            D  => Mutex_Access_d(I-1),
            R  => Mutex_Rst
          );
        
      end block Block_Gen;
    end generate Cross_Out;
    
    -- Select synchronized bit.
    Mutex_Access      <= Mutex_Access_d(C_NUM_SYNC_FF);
    
    -- Get back to interface domain.
    Mutex_Ack_d(0)  <= Mutex_Ack;
    Cross_Back: for I in 1 to C_NUM_SYNC_FF generate
    begin
      Block_Gen: block
        attribute ASYNC_REG : string;
        attribute ASYNC_REG of FDR_INST : label is "TRUE";
      begin
        FDR_INST: FDR
          port map (
            Q  => Mutex_Ack_d(I),
            C  => S_AXI_ACLK,
            D  => Mutex_Ack_d(I-1),
            R  => S_AXI_ARESET
          );
        
      end block Block_Gen;
    end generate Cross_Back;
    
    -- Select synchronized bit.
    Mutex_Ack_I     <= Mutex_Ack_d(C_NUM_SYNC_FF);
    
  end generate Domain_Crossing;

  
end architecture IMP;


-------------------------------------------------------------------------------
-- mutex.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2001-2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        mutex.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              mutex.vhd
--                axi_decode.vhd
--                multi_channel_mutex.vhd
--                  multi_channel_register.vhd
--                    gen_dram.vhd
--                mutex_core.vhd
--                  multi_channel_mutex.vhd
--                    multi_channel_register.vhd
--                      gen_dram.vhd
--
-------------------------------------------------------------------------------
-- Author:          rikardw
--
-- History:
--   rikardw  2006-10-19    First Version
--   stefana  2012-12-14    Removed legacy interfaces
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mutex is
  generic (
    -- General.
    C_FAMILY                : string  := "virtex7";

    -- AXI4 interface #0 specific.
    C_S0_AXI_BASEADDR       : std_logic_vector       := X"FFFF_FFFF";
    C_S0_AXI_HIGHADDR       : std_logic_vector       := X"0000_0000";
    C_S0_AXI_ADDR_WIDTH     : integer                := 32;
    C_S0_AXI_DATA_WIDTH     : integer                := 32;

    -- AXI4 interface #1 specific.
    C_S1_AXI_BASEADDR       : std_logic_vector       := X"FFFF_FFFF";
    C_S1_AXI_HIGHADDR       : std_logic_vector       := X"0000_0000";
    C_S1_AXI_ADDR_WIDTH     : integer                := 32;
    C_S1_AXI_DATA_WIDTH     : integer                := 32;

    -- AXI4 interface #2 specific.
    C_S2_AXI_BASEADDR       : std_logic_vector       := X"FFFF_FFFF";
    C_S2_AXI_HIGHADDR       : std_logic_vector       := X"0000_0000";
    C_S2_AXI_ADDR_WIDTH     : integer                := 32;
    C_S2_AXI_DATA_WIDTH     : integer                := 32;

    -- AXI4 interface #3 specific.
    C_S3_AXI_BASEADDR       : std_logic_vector       := X"FFFF_FFFF";
    C_S3_AXI_HIGHADDR       : std_logic_vector       := X"0000_0000";
    C_S3_AXI_ADDR_WIDTH     : integer                := 32;
    C_S3_AXI_DATA_WIDTH     : integer                := 32;

    -- AXI4 interface #4 specific.
    C_S4_AXI_BASEADDR       : std_logic_vector       := X"FFFF_FFFF";
    C_S4_AXI_HIGHADDR       : std_logic_vector       := X"0000_0000";
    C_S4_AXI_ADDR_WIDTH     : integer                := 32;
    C_S4_AXI_DATA_WIDTH     : integer                := 32;

    -- AXI4 interface #5 specific.
    C_S5_AXI_BASEADDR       : std_logic_vector       := X"FFFF_FFFF";
    C_S5_AXI_HIGHADDR       : std_logic_vector       := X"0000_0000";
    C_S5_AXI_ADDR_WIDTH     : integer                := 32;
    C_S5_AXI_DATA_WIDTH     : integer                := 32;

    -- AXI4 interface #6 specific.
    C_S6_AXI_BASEADDR       : std_logic_vector       := X"FFFF_FFFF";
    C_S6_AXI_HIGHADDR       : std_logic_vector       := X"0000_0000";
    C_S6_AXI_ADDR_WIDTH     : integer                := 32;
    C_S6_AXI_DATA_WIDTH     : integer                := 32;

    -- AXI4 interface #7 specific.
    C_S7_AXI_BASEADDR       : std_logic_vector       := X"FFFF_FFFF";
    C_S7_AXI_HIGHADDR       : std_logic_vector       := X"0000_0000";
    C_S7_AXI_ADDR_WIDTH     : integer                := 32;
    C_S7_AXI_DATA_WIDTH     : integer                := 32;

    -- Mutex specific.
    C_ASYNC_CLKS            : integer range 0 to  1  := 0;
    C_NUM_SYNC_FF           : integer range 1 to  8  := 2; -- Number of cycles to synchronize to new clock domain.
    C_NUM_AXI               : integer range 0 to  8  := 2; -- Number of AXI to access Mutexes.
    C_ENABLE_USER           : integer range 0 to  1  := 0; -- If USER register is available.
    C_OWNER_ID_WIDTH        : integer range 0 to 31  := 8; -- Number of bits for id number.
    C_ENABLE_HW_PROT        : integer range 0 to  1  := 0; -- If hardware security should be used.
    C_NUM_MUTEX             : integer                := 16 -- Number of mutexes.
  );
  port (
    -- AXI4-Lite interface #0 slave signals.
    S0_AXI_ACLK       : in  std_logic;
    S0_AXI_ARESETN    : in  std_logic;
    S0_AXI_AWADDR     : in  std_logic_vector(C_S0_AXI_ADDR_WIDTH-1 downto 0);
    S0_AXI_AWVALID    : in  std_logic;
    S0_AXI_AWREADY    : out std_logic;
    S0_AXI_WDATA      : in  std_logic_vector(C_S0_AXI_DATA_WIDTH-1 downto 0);
    S0_AXI_WSTRB      : in  std_logic_vector((C_S0_AXI_DATA_WIDTH/8)-1 downto 0);
    S0_AXI_WVALID     : in  std_logic;
    S0_AXI_WREADY     : out std_logic;
    S0_AXI_BRESP      : out std_logic_vector(1 downto 0);
    S0_AXI_BVALID     : out std_logic;
    S0_AXI_BREADY     : in  std_logic;
    S0_AXI_ARADDR     : in  std_logic_vector(C_S0_AXI_ADDR_WIDTH-1 downto 0);
    S0_AXI_ARVALID    : in  std_logic;
    S0_AXI_ARREADY    : out std_logic;
    S0_AXI_RDATA      : out std_logic_vector(C_S0_AXI_DATA_WIDTH-1 downto 0);
    S0_AXI_RRESP      : out std_logic_vector(1 downto 0);
    S0_AXI_RVALID     : out std_logic;
    S0_AXI_RREADY     : in  std_logic;
    
    -- AXI4-Lite interface #1 slave signals.
    S1_AXI_ACLK       : in  std_logic;
    S1_AXI_ARESETN    : in  std_logic;
    S1_AXI_AWADDR     : in  std_logic_vector(C_S1_AXI_ADDR_WIDTH-1 downto 0);
    S1_AXI_AWVALID    : in  std_logic;
    S1_AXI_AWREADY    : out std_logic;
    S1_AXI_WDATA      : in  std_logic_vector(C_S1_AXI_DATA_WIDTH-1 downto 0);
    S1_AXI_WSTRB      : in  std_logic_vector((C_S1_AXI_DATA_WIDTH/8)-1 downto 0);
    S1_AXI_WVALID     : in  std_logic;
    S1_AXI_WREADY     : out std_logic;
    S1_AXI_BRESP      : out std_logic_vector(1 downto 0);
    S1_AXI_BVALID     : out std_logic;
    S1_AXI_BREADY     : in  std_logic;
    S1_AXI_ARADDR     : in  std_logic_vector(C_S1_AXI_ADDR_WIDTH-1 downto 0);
    S1_AXI_ARVALID    : in  std_logic;
    S1_AXI_ARREADY    : out std_logic;
    S1_AXI_RDATA      : out std_logic_vector(C_S1_AXI_DATA_WIDTH-1 downto 0);
    S1_AXI_RRESP      : out std_logic_vector(1 downto 0);
    S1_AXI_RVALID     : out std_logic;
    S1_AXI_RREADY     : in  std_logic;
    
    -- AXI4-Lite interface #2 slave signals.
    S2_AXI_ACLK       : in  std_logic;
    S2_AXI_ARESETN    : in  std_logic;
    S2_AXI_AWADDR     : in  std_logic_vector(C_S2_AXI_ADDR_WIDTH-1 downto 0);
    S2_AXI_AWVALID    : in  std_logic;
    S2_AXI_AWREADY    : out std_logic;
    S2_AXI_WDATA      : in  std_logic_vector(C_S2_AXI_DATA_WIDTH-1 downto 0);
    S2_AXI_WSTRB      : in  std_logic_vector((C_S2_AXI_DATA_WIDTH/8)-1 downto 0);
    S2_AXI_WVALID     : in  std_logic;
    S2_AXI_WREADY     : out std_logic;
    S2_AXI_BRESP      : out std_logic_vector(1 downto 0);
    S2_AXI_BVALID     : out std_logic;
    S2_AXI_BREADY     : in  std_logic;
    S2_AXI_ARADDR     : in  std_logic_vector(C_S2_AXI_ADDR_WIDTH-1 downto 0);
    S2_AXI_ARVALID    : in  std_logic;
    S2_AXI_ARREADY    : out std_logic;
    S2_AXI_RDATA      : out std_logic_vector(C_S2_AXI_DATA_WIDTH-1 downto 0);
    S2_AXI_RRESP      : out std_logic_vector(1 downto 0);
    S2_AXI_RVALID     : out std_logic;
    S2_AXI_RREADY     : in  std_logic;
    
    -- AXI4-Lite interface #3 slave signals.
    S3_AXI_ACLK       : in  std_logic;
    S3_AXI_ARESETN    : in  std_logic;
    S3_AXI_AWADDR     : in  std_logic_vector(C_S3_AXI_ADDR_WIDTH-1 downto 0);
    S3_AXI_AWVALID    : in  std_logic;
    S3_AXI_AWREADY    : out std_logic;
    S3_AXI_WDATA      : in  std_logic_vector(C_S3_AXI_DATA_WIDTH-1 downto 0);
    S3_AXI_WSTRB      : in  std_logic_vector((C_S3_AXI_DATA_WIDTH/8)-1 downto 0);
    S3_AXI_WVALID     : in  std_logic;
    S3_AXI_WREADY     : out std_logic;
    S3_AXI_BRESP      : out std_logic_vector(1 downto 0);
    S3_AXI_BVALID     : out std_logic;
    S3_AXI_BREADY     : in  std_logic;
    S3_AXI_ARADDR     : in  std_logic_vector(C_S3_AXI_ADDR_WIDTH-1 downto 0);
    S3_AXI_ARVALID    : in  std_logic;
    S3_AXI_ARREADY    : out std_logic;
    S3_AXI_RDATA      : out std_logic_vector(C_S3_AXI_DATA_WIDTH-1 downto 0);
    S3_AXI_RRESP      : out std_logic_vector(1 downto 0);
    S3_AXI_RVALID     : out std_logic;
    S3_AXI_RREADY     : in  std_logic;
    
    -- AXI4-Lite interface #4 slave signals.
    S4_AXI_ACLK       : in  std_logic;
    S4_AXI_ARESETN    : in  std_logic;
    S4_AXI_AWADDR     : in  std_logic_vector(C_S4_AXI_ADDR_WIDTH-1 downto 0);
    S4_AXI_AWVALID    : in  std_logic;
    S4_AXI_AWREADY    : out std_logic;
    S4_AXI_WDATA      : in  std_logic_vector(C_S4_AXI_DATA_WIDTH-1 downto 0);
    S4_AXI_WSTRB      : in  std_logic_vector((C_S4_AXI_DATA_WIDTH/8)-1 downto 0);
    S4_AXI_WVALID     : in  std_logic;
    S4_AXI_WREADY     : out std_logic;
    S4_AXI_BRESP      : out std_logic_vector(1 downto 0);
    S4_AXI_BVALID     : out std_logic;
    S4_AXI_BREADY     : in  std_logic;
    S4_AXI_ARADDR     : in  std_logic_vector(C_S4_AXI_ADDR_WIDTH-1 downto 0);
    S4_AXI_ARVALID    : in  std_logic;
    S4_AXI_ARREADY    : out std_logic;
    S4_AXI_RDATA      : out std_logic_vector(C_S4_AXI_DATA_WIDTH-1 downto 0);
    S4_AXI_RRESP      : out std_logic_vector(1 downto 0);
    S4_AXI_RVALID     : out std_logic;
    S4_AXI_RREADY     : in  std_logic;
    
    -- AXI4-Lite interface #5 slave signals.
    S5_AXI_ACLK       : in  std_logic;
    S5_AXI_ARESETN    : in  std_logic;
    S5_AXI_AWADDR     : in  std_logic_vector(C_S1_AXI_ADDR_WIDTH-1 downto 0);
    S5_AXI_AWVALID    : in  std_logic;
    S5_AXI_AWREADY    : out std_logic;
    S5_AXI_WDATA      : in  std_logic_vector(C_S5_AXI_DATA_WIDTH-1 downto 0);
    S5_AXI_WSTRB      : in  std_logic_vector((C_S5_AXI_DATA_WIDTH/8)-1 downto 0);
    S5_AXI_WVALID     : in  std_logic;
    S5_AXI_WREADY     : out std_logic;
    S5_AXI_BRESP      : out std_logic_vector(1 downto 0);
    S5_AXI_BVALID     : out std_logic;
    S5_AXI_BREADY     : in  std_logic;
    S5_AXI_ARADDR     : in  std_logic_vector(C_S5_AXI_ADDR_WIDTH-1 downto 0);
    S5_AXI_ARVALID    : in  std_logic;
    S5_AXI_ARREADY    : out std_logic;
    S5_AXI_RDATA      : out std_logic_vector(C_S5_AXI_DATA_WIDTH-1 downto 0);
    S5_AXI_RRESP      : out std_logic_vector(1 downto 0);
    S5_AXI_RVALID     : out std_logic;
    S5_AXI_RREADY     : in  std_logic;
    
    -- AXI4-Lite interface #6 slave signals.
    S6_AXI_ACLK       : in  std_logic;
    S6_AXI_ARESETN    : in  std_logic;
    S6_AXI_AWADDR     : in  std_logic_vector(C_S6_AXI_ADDR_WIDTH-1 downto 0);
    S6_AXI_AWVALID    : in  std_logic;
    S6_AXI_AWREADY    : out std_logic;
    S6_AXI_WDATA      : in  std_logic_vector(C_S6_AXI_DATA_WIDTH-1 downto 0);
    S6_AXI_WSTRB      : in  std_logic_vector((C_S6_AXI_DATA_WIDTH/8)-1 downto 0);
    S6_AXI_WVALID     : in  std_logic;
    S6_AXI_WREADY     : out std_logic;
    S6_AXI_BRESP      : out std_logic_vector(1 downto 0);
    S6_AXI_BVALID     : out std_logic;
    S6_AXI_BREADY     : in  std_logic;
    S6_AXI_ARADDR     : in  std_logic_vector(C_S6_AXI_ADDR_WIDTH-1 downto 0);
    S6_AXI_ARVALID    : in  std_logic;
    S6_AXI_ARREADY    : out std_logic;
    S6_AXI_RDATA      : out std_logic_vector(C_S6_AXI_DATA_WIDTH-1 downto 0);
    S6_AXI_RRESP      : out std_logic_vector(1 downto 0);
    S6_AXI_RVALID     : out std_logic;
    S6_AXI_RREADY     : in  std_logic;
    
    -- AXI4-Lite interface #7 slave signals.
    S7_AXI_ACLK       : in  std_logic;
    S7_AXI_ARESETN    : in  std_logic;
    S7_AXI_AWADDR     : in  std_logic_vector(C_S7_AXI_ADDR_WIDTH-1 downto 0);
    S7_AXI_AWVALID    : in  std_logic;
    S7_AXI_AWREADY    : out std_logic;
    S7_AXI_WDATA      : in  std_logic_vector(C_S7_AXI_DATA_WIDTH-1 downto 0);
    S7_AXI_WSTRB      : in  std_logic_vector((C_S7_AXI_DATA_WIDTH/8)-1 downto 0);
    S7_AXI_WVALID     : in  std_logic;
    S7_AXI_WREADY     : out std_logic;
    S7_AXI_BRESP      : out std_logic_vector(1 downto 0);
    S7_AXI_BVALID     : out std_logic;
    S7_AXI_BREADY     : in  std_logic;
    S7_AXI_ARADDR     : in  std_logic_vector(C_S7_AXI_ADDR_WIDTH-1 downto 0);
    S7_AXI_ARVALID    : in  std_logic;
    S7_AXI_ARREADY    : out std_logic;
    S7_AXI_RDATA      : out std_logic_vector(C_S7_AXI_DATA_WIDTH-1 downto 0);
    S7_AXI_RRESP      : out std_logic_vector(1 downto 0);
    S7_AXI_RVALID     : out std_logic;
    S7_AXI_RREADY     : in  std_logic
  );
end entity mutex;


library unisim;
use unisim.all;



architecture IMP of mutex is

  -----------------------------------------------------------------------------
  -- Function declaration
  -----------------------------------------------------------------------------
  -- Returns at least 1
  function MakePos(a : integer) return integer is
  begin
     if a < 1 then
        return 1;
     else
        return a;
     end if;
  end function MakePos;

  -- Returns the minimum value of the two parameters
  function IntMin(a, b : integer) return integer is
  begin
     if a < b then
        return a;
     else
        return b;
     end if;
  end function IntMin;

  -- Returns the maximum value of the two parameters
  function IntMax(a, b : integer) return integer is
  begin
     if a > b then
        return a;
     else
        return b;
     end if;
  end function IntMax;
  
  -- Returns the maximum value of the two parameters
  function IntSelect(s : boolean; a, b : integer) return integer is
  begin
     if s then
        return a;
     else
        return b;
     end if;
  end function IntSelect;
  
  function Get_Num_Bits(data : natural) return natural is
    variable num_bits : natural:= 1;
  begin
    while( data > 2**num_bits ) loop
      num_bits := num_bits + 1;
    end loop;
    
    return num_bits;
  end function Get_Num_Bits;
  
  
  -----------------------------------------------------------------------------
  -- Constant declaration
  -----------------------------------------------------------------------------
  -- Mutex specific.
  constant C_NUM_INTERFACE         : integer range 1 to 16 := C_NUM_AXI;  
                                                                  -- Number of interfaces to access Mutexes.
  constant C_AXI_HW_ID_WIDTH       : integer:= IntMax(IntMax(IntMax(IntSelect(C_NUM_AXI>0,1,0),
                                                                    IntSelect(C_NUM_AXI>1,1,0)),
                                                             IntMax(IntSelect(C_NUM_AXI>2,1,0),
                                                                    IntSelect(C_NUM_AXI>3,1,0))),
                                                      IntMax(IntMax(IntSelect(C_NUM_AXI>4,1,0),
                                                                    IntSelect(C_NUM_AXI>5,1,0)),
                                                             IntMax(IntSelect(C_NUM_AXI>6,1,0),
                                                                    IntSelect(C_NUM_AXI>7,1,0))));
  constant C_HW_ID_WIDTH           : integer:= C_AXI_HW_ID_WIDTH;
  constant C_REGISTER_WIDTH        : integer               := 8;  -- Width of register offset.
  constant C_AWIDTH                : integer               := C_REGISTER_WIDTH + Get_Num_Bits(C_NUM_MUTEX);
                                                                  -- Address bits including register offset.
  constant C_DWIDTH                : integer               := 32; -- Width of data bus.
  constant C_DWIDTH_USER_REG       : integer               := 32; -- Width of user data.
  constant C_DWIDTH_MUTEX          : integer               := 1;  -- Width of mutex field (usually 1).
  
  -----------------------------------------------------------------------------
  -- Component declaration
  -----------------------------------------------------------------------------
  component axi_decode is
    generic (
      -- AXI4-Lite slave generics
      C_S_AXI_BASEADDR        : std_logic_vector       := X"FFFF_FFFF";
      C_S_AXI_HIGHADDR        : std_logic_vector       := X"0000_0000";
      C_S_AXI_ADDR_WIDTH      : integer                := 32;
      C_S_AXI_DATA_WIDTH      : integer                := 32;
      
      C_ASYNC_CLKS            : integer range 0 to  1  := 0;
      C_NUM_SYNC_FF           : integer range 1 to  8  := 2;  -- Number of cycles to synchronize to new clock domain.
      C_HW_ID_WIDTH           : integer range 1 to 31  := 8;  -- Number of bits for hardware id number.
      C_AWIDTH                : integer                := 8;  -- Address bits including register offset.
      C_DWIDTH                : integer                := 32  -- Width of data bus.
    );
    port (
      -- AXI4-Lite SLAVE SINGLE INTERFACE
      S_AXI_ACLK              : in  std_logic;
      S_AXI_ARESETN           : in  std_logic;
      S_AXI_AWADDR            : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      S_AXI_AWVALID           : in  std_logic;
      S_AXI_AWREADY           : out std_logic;
      S_AXI_WDATA             : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      S_AXI_WSTRB             : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
      S_AXI_WVALID            : in  std_logic;
      S_AXI_WREADY            : out std_logic;
      S_AXI_BRESP             : out std_logic_vector(1 downto 0);
      S_AXI_BVALID            : out std_logic;
      S_AXI_BREADY            : in  std_logic;
      S_AXI_ARADDR            : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      S_AXI_ARVALID           : in  std_logic;
      S_AXI_ARREADY           : out std_logic;
      S_AXI_RDATA             : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      S_AXI_RRESP             : out std_logic_vector(1 downto 0);
      S_AXI_RVALID            : out std_logic;
      S_AXI_RREADY            : in  std_logic;
      
      -- Mutex signals.
      Mutex_Clk               : in  std_logic;
      Mutex_Rst               : in  std_logic;
      Mutex_Access            : out std_logic;
      Mutex_RnW               : out std_logic;
      Mutex_HW_Id             : out std_logic_vector(0 to C_HW_ID_WIDTH - 1);
      Mutex_Addr              : out std_logic_vector(0 to C_AWIDTH - 1);
      Mutex_Wr_Data           : out std_logic_vector(0 to C_DWIDTH - 1);
      Mutex_Rd_Data           : in  std_logic_vector(0 to C_DWIDTH - 1);
      Mutex_Ack               : in  std_logic
    );
  end component axi_decode;
  
  component mutex_core is
    generic (
      -- General.
      C_FAMILY                : string                := "virtex7";
      
      -- Mutex specific.
      C_NUM_INTERFACE         : integer range 1 to 16 := 1;  -- Number of interfaces to access Mutexes.
      C_ENABLE_USER           : integer range 0 to 1  := 1;  -- If USER register is available.
      C_OWNER_ID_WIDTH        : integer range 0 to 31 := 8;  -- Number of bits for id number.
      C_HW_ID_WIDTH           : integer range 1 to 31 := 8;  -- Number of bits for hardware id number.
      C_ENABLE_HW_PROT        : integer range 0 to 1  := 0;  -- If hardware security should be used.
      C_NUM_MUTEX             : integer               := 16; -- Number of mutexes.
      C_MUTEX_NUMBER          : integer               := 0;  -- Mutex number.
      C_AWIDTH                : integer               := 8;  -- Address bits including register offset.
      C_REGISTER_WIDTH        : integer               := 4;  -- Width of register offset.
      C_DWIDTH                : integer               := 32; -- Width of data bus.
      C_DWIDTH_USER_REG       : integer               := 32; -- Width of user data.
      C_DWIDTH_MUTEX          : integer               := 1   -- Width of mutex field (usually 1).
    );
    port (
      -- System signals
      Clk                     : in  std_logic;
      Rst                     : in  std_logic;
      
      -- Bus slave signals
      Mutex_Access            : in  std_logic_vector(0 to C_NUM_INTERFACE - 1);
      Mutex_RnW               : in  std_logic_vector(0 to C_NUM_INTERFACE - 1);
      Mutex_HW_Id             : in  std_logic_vector(0 to C_NUM_INTERFACE * C_HW_ID_WIDTH - 1);
      Mutex_Addr              : in  std_logic_vector(0 to C_NUM_INTERFACE * C_AWIDTH - 1);
      Mutex_Wr_Data           : in  std_logic_vector(0 to C_NUM_INTERFACE * C_DWIDTH - 1);
      Mutex_Rd_Data           : out std_logic_vector(0 to C_DWIDTH - 1);
      Mutex_Ack               : out std_logic_vector(0 to C_NUM_INTERFACE - 1)
    );
  end component mutex_core;
    
  
  -----------------------------------------------------------------------------
  -- Signal declaration
  -----------------------------------------------------------------------------
  -- Internal MUTEX signals.
  signal Mutex_Clk               : std_logic;
  signal Mutex_Rst               : std_logic;
  signal Mutex_Access            : std_logic_vector(0 to C_NUM_INTERFACE - 1);
  signal Mutex_RnW               : std_logic_vector(0 to C_NUM_INTERFACE - 1);
  signal Mutex_HW_Id             : std_logic_vector(0 to C_NUM_INTERFACE * C_HW_ID_WIDTH - 1);
  signal Mutex_Addr              : std_logic_vector(0 to C_NUM_INTERFACE * C_AWIDTH - 1);
  signal Mutex_Wr_Data           : std_logic_vector(0 to C_NUM_INTERFACE * C_DWIDTH - 1);
  signal Mutex_Rd_Data           : std_logic_vector(0 to C_NUM_INTERFACE * C_DWIDTH - 1);
  signal Mutex_Ack               : std_logic_vector(0 to C_NUM_INTERFACE - 1);
  signal Mutex_Rd_Data_I         : std_logic_vector(0 to C_DWIDTH - 1);
  
  
begin  -- architecture IMP

  
  -----------------------------------------------------------------------------
  -- Instantiating MUTEX AXI Interface #0
  -----------------------------------------------------------------------------
  Using_AXI_0: if C_NUM_AXI > 0 generate
  begin
    AXI_If_0: axi_decode
      generic map(
        -- AXI4-Lite slave generics
        C_S_AXI_BASEADDR        => C_S0_AXI_BASEADDR,
        C_S_AXI_HIGHADDR        => C_S0_AXI_HIGHADDR,
        C_S_AXI_ADDR_WIDTH      => C_S0_AXI_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH      => C_S0_AXI_DATA_WIDTH,
        
        C_ASYNC_CLKS            => 0,
        C_NUM_SYNC_FF           => C_NUM_SYNC_FF,
        C_HW_ID_WIDTH           => C_HW_ID_WIDTH,
        C_AWIDTH                => C_AWIDTH,
        C_DWIDTH                => C_DWIDTH
      )
      port map(
        -- AXI4-Lite SLAVE SINGLE INTERFACE
        S_AXI_ACLK              => S0_AXI_ACLK,
        S_AXI_ARESETN           => S0_AXI_ARESETN,
        S_AXI_AWADDR            => S0_AXI_AWADDR,
        S_AXI_AWVALID           => S0_AXI_AWVALID,
        S_AXI_AWREADY           => S0_AXI_AWREADY,
        S_AXI_WDATA             => S0_AXI_WDATA,
        S_AXI_WSTRB             => S0_AXI_WSTRB,
        S_AXI_WVALID            => S0_AXI_WVALID,
        S_AXI_WREADY            => S0_AXI_WREADY,
        S_AXI_BRESP             => S0_AXI_BRESP,
        S_AXI_BVALID            => S0_AXI_BVALID,
        S_AXI_BREADY            => S0_AXI_BREADY,
        S_AXI_ARADDR            => S0_AXI_ARADDR,
        S_AXI_ARVALID           => S0_AXI_ARVALID,
        S_AXI_ARREADY           => S0_AXI_ARREADY,
        S_AXI_RDATA             => S0_AXI_RDATA,
        S_AXI_RRESP             => S0_AXI_RRESP,
        S_AXI_RVALID            => S0_AXI_RVALID,
        S_AXI_RREADY            => S0_AXI_RREADY,
        
        -- Mutex signals.
        Mutex_Clk               => Mutex_Clk,
        Mutex_Rst               => Mutex_Rst,
        Mutex_Access            => Mutex_Access(0),
        Mutex_RnW               => Mutex_RnW(0),
        Mutex_HW_Id             => Mutex_HW_Id((0) * C_HW_ID_WIDTH to (1) * C_HW_ID_WIDTH - 1),
        Mutex_Addr              => Mutex_Addr((0)  * C_AWIDTH      to (1) * C_AWIDTH - 1),
        Mutex_Wr_Data           => Mutex_Wr_Data((0) * C_DWIDTH    to (1) * C_DWIDTH - 1),
        Mutex_Rd_Data           => Mutex_Rd_Data((0) * C_DWIDTH    to (1) * C_DWIDTH - 1),
        Mutex_Ack               => Mutex_Ack(0)
      );
  end generate Using_AXI_0;
  
  No_AXI_0: if C_NUM_AXI < 1 generate
  begin
    S0_AXI_AWREADY    <= '0';
    S0_AXI_WREADY     <= '0';
    S0_AXI_BRESP      <= (others=>'0');
    S0_AXI_BVALID     <= '0';
    S0_AXI_ARREADY    <= '0';
    S0_AXI_RDATA      <= (others=>'0');
    S0_AXI_RRESP      <= (others=>'0');
    S0_AXI_RVALID     <= '0';
  end generate No_AXI_0;
  
  
  -----------------------------------------------------------------------------
  -- Instantiating MUTEX AXI Interface #1
  -----------------------------------------------------------------------------
  Using_AXI_1: if C_NUM_AXI > 1 generate
  begin
    AXI_If_1: axi_decode
      generic map(
        -- AXI4-Lite slave generics
        C_S_AXI_BASEADDR        => C_S1_AXI_BASEADDR,
        C_S_AXI_HIGHADDR        => C_S1_AXI_HIGHADDR,
        C_S_AXI_ADDR_WIDTH      => C_S1_AXI_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH      => C_S1_AXI_DATA_WIDTH,
        
        C_ASYNC_CLKS            => C_ASYNC_CLKS,
        C_NUM_SYNC_FF           => C_NUM_SYNC_FF,
        C_HW_ID_WIDTH           => C_HW_ID_WIDTH,
        C_AWIDTH                => C_AWIDTH,
        C_DWIDTH                => C_DWIDTH
      )
      port map(
        -- AXI4-Lite SLAVE SINGLE INTERFACE
        S_AXI_ACLK              => S1_AXI_ACLK,
        S_AXI_ARESETN           => S1_AXI_ARESETN,
        S_AXI_AWADDR            => S1_AXI_AWADDR,
        S_AXI_AWVALID           => S1_AXI_AWVALID,
        S_AXI_AWREADY           => S1_AXI_AWREADY,
        S_AXI_WDATA             => S1_AXI_WDATA,
        S_AXI_WSTRB             => S1_AXI_WSTRB,
        S_AXI_WVALID            => S1_AXI_WVALID,
        S_AXI_WREADY            => S1_AXI_WREADY,
        S_AXI_BRESP             => S1_AXI_BRESP,
        S_AXI_BVALID            => S1_AXI_BVALID,
        S_AXI_BREADY            => S1_AXI_BREADY,
        S_AXI_ARADDR            => S1_AXI_ARADDR,
        S_AXI_ARVALID           => S1_AXI_ARVALID,
        S_AXI_ARREADY           => S1_AXI_ARREADY,
        S_AXI_RDATA             => S1_AXI_RDATA,
        S_AXI_RRESP             => S1_AXI_RRESP,
        S_AXI_RVALID            => S1_AXI_RVALID,
        S_AXI_RREADY            => S1_AXI_RREADY,
        
        -- Mutex signals.
        Mutex_Clk               => Mutex_Clk,
        Mutex_Rst               => Mutex_Rst,
        Mutex_Access            => Mutex_Access(1),
        Mutex_RnW               => Mutex_RnW(1),
        Mutex_HW_Id             => Mutex_HW_Id((1) * C_HW_ID_WIDTH to (2) * C_HW_ID_WIDTH - 1),
        Mutex_Addr              => Mutex_Addr((1)  * C_AWIDTH      to (2) * C_AWIDTH - 1),
        Mutex_Wr_Data           => Mutex_Wr_Data((1) * C_DWIDTH    to (2) * C_DWIDTH - 1),
        Mutex_Rd_Data           => Mutex_Rd_Data((1) * C_DWIDTH    to (2) * C_DWIDTH - 1),
        Mutex_Ack               => Mutex_Ack(1)
      );
  end generate Using_AXI_1;
  
  No_AXI_1: if C_NUM_AXI < 2 generate
  begin
    S1_AXI_AWREADY    <= '0';
    S1_AXI_WREADY     <= '0';
    S1_AXI_BRESP      <= (others=>'0');
    S1_AXI_BVALID     <= '0';
    S1_AXI_ARREADY    <= '0';
    S1_AXI_RDATA      <= (others=>'0');
    S1_AXI_RRESP      <= (others=>'0');
    S1_AXI_RVALID     <= '0';
  end generate No_AXI_1;
  
  
  -----------------------------------------------------------------------------
  -- Instantiating MUTEX AXI Interface #2
  -----------------------------------------------------------------------------
  Using_AXI_2: if C_NUM_AXI > 2 generate
  begin
    AXI_If_2: axi_decode
      generic map(
        -- AXI4-Lite slave generics
        C_S_AXI_BASEADDR        => C_S2_AXI_BASEADDR,
        C_S_AXI_HIGHADDR        => C_S2_AXI_HIGHADDR,
        C_S_AXI_ADDR_WIDTH      => C_S2_AXI_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH      => C_S2_AXI_DATA_WIDTH,
        
        C_ASYNC_CLKS            => C_ASYNC_CLKS,
        C_NUM_SYNC_FF           => C_NUM_SYNC_FF,
        C_HW_ID_WIDTH           => C_HW_ID_WIDTH,
        C_AWIDTH                => C_AWIDTH,
        C_DWIDTH                => C_DWIDTH
      )
      port map(
        -- AXI4-Lite SLAVE SINGLE INTERFACE
        S_AXI_ACLK              => S2_AXI_ACLK,
        S_AXI_ARESETN           => S2_AXI_ARESETN,
        S_AXI_AWADDR            => S2_AXI_AWADDR,
        S_AXI_AWVALID           => S2_AXI_AWVALID,
        S_AXI_AWREADY           => S2_AXI_AWREADY,
        S_AXI_WDATA             => S2_AXI_WDATA,
        S_AXI_WSTRB             => S2_AXI_WSTRB,
        S_AXI_WVALID            => S2_AXI_WVALID,
        S_AXI_WREADY            => S2_AXI_WREADY,
        S_AXI_BRESP             => S2_AXI_BRESP,
        S_AXI_BVALID            => S2_AXI_BVALID,
        S_AXI_BREADY            => S2_AXI_BREADY,
        S_AXI_ARADDR            => S2_AXI_ARADDR,
        S_AXI_ARVALID           => S2_AXI_ARVALID,
        S_AXI_ARREADY           => S2_AXI_ARREADY,
        S_AXI_RDATA             => S2_AXI_RDATA,
        S_AXI_RRESP             => S2_AXI_RRESP,
        S_AXI_RVALID            => S2_AXI_RVALID,
        S_AXI_RREADY            => S2_AXI_RREADY,
        
        -- Mutex signals.
        Mutex_Clk               => Mutex_Clk,
        Mutex_Rst               => Mutex_Rst,
        Mutex_Access            => Mutex_Access(2),
        Mutex_RnW               => Mutex_RnW(2),
        Mutex_HW_Id             => Mutex_HW_Id((2) * C_HW_ID_WIDTH to (3) * C_HW_ID_WIDTH - 1),
        Mutex_Addr              => Mutex_Addr((2)  * C_AWIDTH      to (3) * C_AWIDTH - 1),
        Mutex_Wr_Data           => Mutex_Wr_Data((2) * C_DWIDTH    to (3) * C_DWIDTH - 1),
        Mutex_Rd_Data           => Mutex_Rd_Data((2) * C_DWIDTH    to (3) * C_DWIDTH - 1),
        Mutex_Ack               => Mutex_Ack(2)
      );
  end generate Using_AXI_2;
  
  No_AXI_2: if C_NUM_AXI < 3 generate
  begin
    S2_AXI_AWREADY    <= '0';
    S2_AXI_WREADY     <= '0';
    S2_AXI_BRESP      <= (others=>'0');
    S2_AXI_BVALID     <= '0';
    S2_AXI_ARREADY    <= '0';
    S2_AXI_RDATA      <= (others=>'0');
    S2_AXI_RRESP      <= (others=>'0');
    S2_AXI_RVALID     <= '0';
  end generate No_AXI_2;
  
  
  -----------------------------------------------------------------------------
  -- Instantiating MUTEX AXI Interface #3
  -----------------------------------------------------------------------------
  Using_AXI_3: if C_NUM_AXI > 3 generate
  begin
    AXI_If_3: axi_decode
      generic map(
        -- AXI4-Lite slave generics
        C_S_AXI_BASEADDR        => C_S3_AXI_BASEADDR,
        C_S_AXI_HIGHADDR        => C_S3_AXI_HIGHADDR,
        C_S_AXI_ADDR_WIDTH      => C_S3_AXI_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH      => C_S3_AXI_DATA_WIDTH,
        
        C_ASYNC_CLKS            => C_ASYNC_CLKS,
        C_NUM_SYNC_FF           => C_NUM_SYNC_FF,
        C_HW_ID_WIDTH           => C_HW_ID_WIDTH,
        C_AWIDTH                => C_AWIDTH,
        C_DWIDTH                => C_DWIDTH
      )
      port map(
        -- AXI4-Lite SLAVE SINGLE INTERFACE
        S_AXI_ACLK              => S3_AXI_ACLK,
        S_AXI_ARESETN           => S3_AXI_ARESETN,
        S_AXI_AWADDR            => S3_AXI_AWADDR,
        S_AXI_AWVALID           => S3_AXI_AWVALID,
        S_AXI_AWREADY           => S3_AXI_AWREADY,
        S_AXI_WDATA             => S3_AXI_WDATA,
        S_AXI_WSTRB             => S3_AXI_WSTRB,
        S_AXI_WVALID            => S3_AXI_WVALID,
        S_AXI_WREADY            => S3_AXI_WREADY,
        S_AXI_BRESP             => S3_AXI_BRESP,
        S_AXI_BVALID            => S3_AXI_BVALID,
        S_AXI_BREADY            => S3_AXI_BREADY,
        S_AXI_ARADDR            => S3_AXI_ARADDR,
        S_AXI_ARVALID           => S3_AXI_ARVALID,
        S_AXI_ARREADY           => S3_AXI_ARREADY,
        S_AXI_RDATA             => S3_AXI_RDATA,
        S_AXI_RRESP             => S3_AXI_RRESP,
        S_AXI_RVALID            => S3_AXI_RVALID,
        S_AXI_RREADY            => S3_AXI_RREADY,
        
        -- Mutex signals.
        Mutex_Clk               => Mutex_Clk,
        Mutex_Rst               => Mutex_Rst,
        Mutex_Access            => Mutex_Access(3),
        Mutex_RnW               => Mutex_RnW(3),
        Mutex_HW_Id             => Mutex_HW_Id((3) * C_HW_ID_WIDTH to (4) * C_HW_ID_WIDTH - 1),
        Mutex_Addr              => Mutex_Addr((3)  * C_AWIDTH      to (4) * C_AWIDTH - 1),
        Mutex_Wr_Data           => Mutex_Wr_Data((3) * C_DWIDTH    to (4) * C_DWIDTH - 1),
        Mutex_Rd_Data           => Mutex_Rd_Data((3) * C_DWIDTH    to (4) * C_DWIDTH - 1),
        Mutex_Ack               => Mutex_Ack(3)
      );
  end generate Using_AXI_3;
  
  No_AXI_3: if C_NUM_AXI < 4 generate
  begin
    S3_AXI_AWREADY    <= '0';
    S3_AXI_WREADY     <= '0';
    S3_AXI_BRESP      <= (others=>'0');
    S3_AXI_BVALID     <= '0';
    S3_AXI_ARREADY    <= '0';
    S3_AXI_RDATA      <= (others=>'0');
    S3_AXI_RRESP      <= (others=>'0');
    S3_AXI_RVALID     <= '0';
  end generate No_AXI_3;
  
  
  -----------------------------------------------------------------------------
  -- Instantiating MUTEX AXI Interface #4
  -----------------------------------------------------------------------------
  Using_AXI_4: if C_NUM_AXI > 4 generate
  begin
    AXI_If_4: axi_decode
      generic map(
        -- AXI4-Lite slave generics
        C_S_AXI_BASEADDR        => C_S4_AXI_BASEADDR,
        C_S_AXI_HIGHADDR        => C_S4_AXI_HIGHADDR,
        C_S_AXI_ADDR_WIDTH      => C_S4_AXI_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH      => C_S4_AXI_DATA_WIDTH,
        
        C_ASYNC_CLKS            => C_ASYNC_CLKS,
        C_NUM_SYNC_FF           => C_NUM_SYNC_FF,
        C_HW_ID_WIDTH           => C_HW_ID_WIDTH,
        C_AWIDTH                => C_AWIDTH,
        C_DWIDTH                => C_DWIDTH
      )
      port map(
        -- AXI4-Lite SLAVE SINGLE INTERFACE
        S_AXI_ACLK              => S4_AXI_ACLK,
        S_AXI_ARESETN           => S4_AXI_ARESETN,
        S_AXI_AWADDR            => S4_AXI_AWADDR,
        S_AXI_AWVALID           => S4_AXI_AWVALID,
        S_AXI_AWREADY           => S4_AXI_AWREADY,
        S_AXI_WDATA             => S4_AXI_WDATA,
        S_AXI_WSTRB             => S4_AXI_WSTRB,
        S_AXI_WVALID            => S4_AXI_WVALID,
        S_AXI_WREADY            => S4_AXI_WREADY,
        S_AXI_BRESP             => S4_AXI_BRESP,
        S_AXI_BVALID            => S4_AXI_BVALID,
        S_AXI_BREADY            => S4_AXI_BREADY,
        S_AXI_ARADDR            => S4_AXI_ARADDR,
        S_AXI_ARVALID           => S4_AXI_ARVALID,
        S_AXI_ARREADY           => S4_AXI_ARREADY,
        S_AXI_RDATA             => S4_AXI_RDATA,
        S_AXI_RRESP             => S4_AXI_RRESP,
        S_AXI_RVALID            => S4_AXI_RVALID,
        S_AXI_RREADY            => S4_AXI_RREADY,
        
        -- Mutex signals.
        Mutex_Clk               => Mutex_Clk,
        Mutex_Rst               => Mutex_Rst,
        Mutex_Access            => Mutex_Access(4),
        Mutex_RnW               => Mutex_RnW(4),
        Mutex_HW_Id             => Mutex_HW_Id((4) * C_HW_ID_WIDTH to (5) * C_HW_ID_WIDTH - 1),
        Mutex_Addr              => Mutex_Addr((4)  * C_AWIDTH      to (5) * C_AWIDTH - 1),
        Mutex_Wr_Data           => Mutex_Wr_Data((4) * C_DWIDTH    to (5) * C_DWIDTH - 1),
        Mutex_Rd_Data           => Mutex_Rd_Data((4) * C_DWIDTH    to (5) * C_DWIDTH - 1),
        Mutex_Ack               => Mutex_Ack(4)
      );
  end generate Using_AXI_4;
  
  No_AXI_4: if C_NUM_AXI < 5 generate
  begin
    S4_AXI_AWREADY    <= '0';
    S4_AXI_WREADY     <= '0';
    S4_AXI_BRESP      <= (others=>'0');
    S4_AXI_BVALID     <= '0';
    S4_AXI_ARREADY    <= '0';
    S4_AXI_RDATA      <= (others=>'0');
    S4_AXI_RRESP      <= (others=>'0');
    S4_AXI_RVALID     <= '0';
  end generate No_AXI_4;
  
  
  -----------------------------------------------------------------------------
  -- Instantiating MUTEX AXI Interface #5
  -----------------------------------------------------------------------------
  Using_AXI_5: if C_NUM_AXI > 5 generate
  begin
    AXI_If_5: axi_decode
      generic map(
        -- AXI4-Lite slave generics
        C_S_AXI_BASEADDR        => C_S5_AXI_BASEADDR,
        C_S_AXI_HIGHADDR        => C_S5_AXI_HIGHADDR,
        C_S_AXI_ADDR_WIDTH      => C_S5_AXI_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH      => C_S5_AXI_DATA_WIDTH,
        
        C_ASYNC_CLKS            => C_ASYNC_CLKS,
        C_NUM_SYNC_FF           => C_NUM_SYNC_FF,
        C_HW_ID_WIDTH           => C_HW_ID_WIDTH,
        C_AWIDTH                => C_AWIDTH,
        C_DWIDTH                => C_DWIDTH
      )
      port map(
        -- AXI4-Lite SLAVE SINGLE INTERFACE
        S_AXI_ACLK              => S5_AXI_ACLK,
        S_AXI_ARESETN           => S5_AXI_ARESETN,
        S_AXI_AWADDR            => S5_AXI_AWADDR,
        S_AXI_AWVALID           => S5_AXI_AWVALID,
        S_AXI_AWREADY           => S5_AXI_AWREADY,
        S_AXI_WDATA             => S5_AXI_WDATA,
        S_AXI_WSTRB             => S5_AXI_WSTRB,
        S_AXI_WVALID            => S5_AXI_WVALID,
        S_AXI_WREADY            => S5_AXI_WREADY,
        S_AXI_BRESP             => S5_AXI_BRESP,
        S_AXI_BVALID            => S5_AXI_BVALID,
        S_AXI_BREADY            => S5_AXI_BREADY,
        S_AXI_ARADDR            => S5_AXI_ARADDR,
        S_AXI_ARVALID           => S5_AXI_ARVALID,
        S_AXI_ARREADY           => S5_AXI_ARREADY,
        S_AXI_RDATA             => S5_AXI_RDATA,
        S_AXI_RRESP             => S5_AXI_RRESP,
        S_AXI_RVALID            => S5_AXI_RVALID,
        S_AXI_RREADY            => S5_AXI_RREADY,
        
        -- Mutex signals.
        Mutex_Clk               => Mutex_Clk,
        Mutex_Rst               => Mutex_Rst,
        Mutex_Access            => Mutex_Access(5),
        Mutex_RnW               => Mutex_RnW(5),
        Mutex_HW_Id             => Mutex_HW_Id((5) * C_HW_ID_WIDTH to (6) * C_HW_ID_WIDTH - 1),
        Mutex_Addr              => Mutex_Addr((5)  * C_AWIDTH      to (6) * C_AWIDTH - 1),
        Mutex_Wr_Data           => Mutex_Wr_Data((5) * C_DWIDTH    to (6) * C_DWIDTH - 1),
        Mutex_Rd_Data           => Mutex_Rd_Data((5) * C_DWIDTH    to (6) * C_DWIDTH - 1),
        Mutex_Ack               => Mutex_Ack(5)
      );
  end generate Using_AXI_5;
  
  No_AXI_5: if C_NUM_AXI < 6 generate
  begin
    S5_AXI_AWREADY    <= '0';
    S5_AXI_WREADY     <= '0';
    S5_AXI_BRESP      <= (others=>'0');
    S5_AXI_BVALID     <= '0';
    S5_AXI_ARREADY    <= '0';
    S5_AXI_RDATA      <= (others=>'0');
    S5_AXI_RRESP      <= (others=>'0');
    S5_AXI_RVALID     <= '0';
  end generate No_AXI_5;
  
  
  -----------------------------------------------------------------------------
  -- Instantiating MUTEX AXI Interface #6
  -----------------------------------------------------------------------------
  Using_AXI_6: if C_NUM_AXI > 6 generate
  begin
    AXI_If_6: axi_decode
      generic map(
        -- AXI4-Lite slave generics
        C_S_AXI_BASEADDR        => C_S6_AXI_BASEADDR,
        C_S_AXI_HIGHADDR        => C_S6_AXI_HIGHADDR,
        C_S_AXI_ADDR_WIDTH      => C_S6_AXI_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH      => C_S6_AXI_DATA_WIDTH,
        
        C_ASYNC_CLKS            => C_ASYNC_CLKS,
        C_NUM_SYNC_FF           => C_NUM_SYNC_FF,
        C_HW_ID_WIDTH           => C_HW_ID_WIDTH,
        C_AWIDTH                => C_AWIDTH,
        C_DWIDTH                => C_DWIDTH
      )
      port map(
        -- AXI4-Lite SLAVE SINGLE INTERFACE
        S_AXI_ACLK              => S6_AXI_ACLK,
        S_AXI_ARESETN           => S6_AXI_ARESETN,
        S_AXI_AWADDR            => S6_AXI_AWADDR,
        S_AXI_AWVALID           => S6_AXI_AWVALID,
        S_AXI_AWREADY           => S6_AXI_AWREADY,
        S_AXI_WDATA             => S6_AXI_WDATA,
        S_AXI_WSTRB             => S6_AXI_WSTRB,
        S_AXI_WVALID            => S6_AXI_WVALID,
        S_AXI_WREADY            => S6_AXI_WREADY,
        S_AXI_BRESP             => S6_AXI_BRESP,
        S_AXI_BVALID            => S6_AXI_BVALID,
        S_AXI_BREADY            => S6_AXI_BREADY,
        S_AXI_ARADDR            => S6_AXI_ARADDR,
        S_AXI_ARVALID           => S6_AXI_ARVALID,
        S_AXI_ARREADY           => S6_AXI_ARREADY,
        S_AXI_RDATA             => S6_AXI_RDATA,
        S_AXI_RRESP             => S6_AXI_RRESP,
        S_AXI_RVALID            => S6_AXI_RVALID,
        S_AXI_RREADY            => S6_AXI_RREADY,
        
        -- Mutex signals.
        Mutex_Clk               => Mutex_Clk,
        Mutex_Rst               => Mutex_Rst,
        Mutex_Access            => Mutex_Access(6),
        Mutex_RnW               => Mutex_RnW(6),
        Mutex_HW_Id             => Mutex_HW_Id((6) * C_HW_ID_WIDTH to (7) * C_HW_ID_WIDTH - 1),
        Mutex_Addr              => Mutex_Addr((6)  * C_AWIDTH      to (7) * C_AWIDTH - 1),
        Mutex_Wr_Data           => Mutex_Wr_Data((6) * C_DWIDTH    to (7) * C_DWIDTH - 1),
        Mutex_Rd_Data           => Mutex_Rd_Data((6) * C_DWIDTH    to (7) * C_DWIDTH - 1),
        Mutex_Ack               => Mutex_Ack(6)
      );
  end generate Using_AXI_6;
  
  No_AXI_6: if C_NUM_AXI < 7 generate
  begin
    S6_AXI_AWREADY    <= '0';
    S6_AXI_WREADY     <= '0';
    S6_AXI_BRESP      <= (others=>'0');
    S6_AXI_BVALID     <= '0';
    S6_AXI_ARREADY    <= '0';
    S6_AXI_RDATA      <= (others=>'0');
    S6_AXI_RRESP      <= (others=>'0');
    S6_AXI_RVALID     <= '0';
  end generate No_AXI_6;
  
  
  -----------------------------------------------------------------------------
  -- Instantiating MUTEX AXI Interface #7
  -----------------------------------------------------------------------------
  Using_AXI_7: if C_NUM_AXI > 7 generate
  begin
    AXI_If_7: axi_decode
      generic map(
        -- AXI4-Lite slave generics
        C_S_AXI_BASEADDR        => C_S7_AXI_BASEADDR,
        C_S_AXI_HIGHADDR        => C_S7_AXI_HIGHADDR,
        C_S_AXI_ADDR_WIDTH      => C_S7_AXI_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH      => C_S7_AXI_DATA_WIDTH,
        
        C_ASYNC_CLKS            => C_ASYNC_CLKS,
        C_NUM_SYNC_FF           => C_NUM_SYNC_FF,
        C_HW_ID_WIDTH           => C_HW_ID_WIDTH,
        C_AWIDTH                => C_AWIDTH,
        C_DWIDTH                => C_DWIDTH
      )
      port map(
        -- AXI4-Lite SLAVE SINGLE INTERFACE
        S_AXI_ACLK              => S7_AXI_ACLK,
        S_AXI_ARESETN           => S7_AXI_ARESETN,
        S_AXI_AWADDR            => S7_AXI_AWADDR,
        S_AXI_AWVALID           => S7_AXI_AWVALID,
        S_AXI_AWREADY           => S7_AXI_AWREADY,
        S_AXI_WDATA             => S7_AXI_WDATA,
        S_AXI_WSTRB             => S7_AXI_WSTRB,
        S_AXI_WVALID            => S7_AXI_WVALID,
        S_AXI_WREADY            => S7_AXI_WREADY,
        S_AXI_BRESP             => S7_AXI_BRESP,
        S_AXI_BVALID            => S7_AXI_BVALID,
        S_AXI_BREADY            => S7_AXI_BREADY,
        S_AXI_ARADDR            => S7_AXI_ARADDR,
        S_AXI_ARVALID           => S7_AXI_ARVALID,
        S_AXI_ARREADY           => S7_AXI_ARREADY,
        S_AXI_RDATA             => S7_AXI_RDATA,
        S_AXI_RRESP             => S7_AXI_RRESP,
        S_AXI_RVALID            => S7_AXI_RVALID,
        S_AXI_RREADY            => S7_AXI_RREADY,
        
        -- Mutex signals.
        Mutex_Clk               => Mutex_Clk,
        Mutex_Rst               => Mutex_Rst,
        Mutex_Access            => Mutex_Access(7),
        Mutex_RnW               => Mutex_RnW(7),
        Mutex_HW_Id             => Mutex_HW_Id((7) * C_HW_ID_WIDTH to (8) * C_HW_ID_WIDTH - 1),
        Mutex_Addr              => Mutex_Addr((7)  * C_AWIDTH      to (8) * C_AWIDTH - 1),
        Mutex_Wr_Data           => Mutex_Wr_Data((7) * C_DWIDTH    to (8) * C_DWIDTH - 1),
        Mutex_Rd_Data           => Mutex_Rd_Data((7) * C_DWIDTH    to (8) * C_DWIDTH - 1),
        Mutex_Ack               => Mutex_Ack(7)
      );
  end generate Using_AXI_7;
  
  No_AXI_7: if C_NUM_AXI < 8 generate
  begin
    S7_AXI_AWREADY    <= '0';
    S7_AXI_WREADY     <= '0';
    S7_AXI_BRESP      <= (others=>'0');
    S7_AXI_BVALID     <= '0';
    S7_AXI_ARREADY    <= '0';
    S7_AXI_RDATA      <= (others=>'0');
    S7_AXI_RRESP      <= (others=>'0');
    S7_AXI_RVALID     <= '0';
  end generate No_AXI_7;
  
  
  -----------------------------------------------------------------------------
  -- Instantiating MUTEX Core
  -----------------------------------------------------------------------------
  Mutex_Clk <= S0_AXI_ACLK; 
  Mutex_Rst <= not S0_AXI_ARESETN;
  
  SingleAccess: mutex_core
    generic map(
      -- General.
      C_FAMILY                => C_FAMILY,
      
      -- Mutex specific.
      C_NUM_INTERFACE         => C_NUM_INTERFACE,
      C_ENABLE_USER           => C_ENABLE_USER,
      C_OWNER_ID_WIDTH        => C_OWNER_ID_WIDTH,
      C_HW_ID_WIDTH           => C_HW_ID_WIDTH,
      C_ENABLE_HW_PROT        => C_ENABLE_HW_PROT,
      C_NUM_MUTEX             => C_NUM_MUTEX,
      C_MUTEX_NUMBER          => 0,
      C_AWIDTH                => C_AWIDTH,
      C_REGISTER_WIDTH        => C_REGISTER_WIDTH,
      C_DWIDTH                => C_DWIDTH,
      C_DWIDTH_MUTEX          => C_DWIDTH_MUTEX
    )
    port map(
      -- System signals
      Clk                     => Mutex_Clk,
      Rst                     => Mutex_Rst,
      
      -- Bus slave signals
      Mutex_Access            => Mutex_Access,
      Mutex_RnW               => Mutex_RnW,
      Mutex_HW_Id             => Mutex_HW_Id,
      Mutex_Addr              => Mutex_Addr,
      Mutex_Wr_Data           => Mutex_Wr_Data,
      Mutex_Rd_Data           => Mutex_Rd_Data_I,
      Mutex_Ack               => Mutex_Ack
    );
  
  -- Distribute result to all interfaces.
  If_Num_Distr: for I in 0 to C_NUM_INTERFACE - 1 generate
  begin
    Mutex_Rd_Data(I * C_DWIDTH to (I + 1) * C_DWIDTH - 1) <= Mutex_Rd_Data_I;
  end generate If_Num_Distr;
    
  
end architecture IMP;





