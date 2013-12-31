---------------------------------------------------------------------------
-- FILE    : strings.ads
-- SUBJECT : Specification of a string handling package.
-- AUTHOR  : (C) Copyright 2014 by Peter C. Chapin
--
-- Please send comments or bug reports to
--
--      Peter C. Chapin <PChapin@vtc.vsc.edu>
---------------------------------------------------------------------------
with Network;

package Strings is

   -- Converts Text into a sequence of Octets. If all characters of Text were converted, Complete is True (otherwise False).
   procedure To_Octet_Array
     (Text : in String; Data : out Network.Octet_Array; Octet_Count : out Natural; Complete : out Boolean)
   with
     Depends => ( (Data, Octet_Count, Complete) => Text );

end Strings;
