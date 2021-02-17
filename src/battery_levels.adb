with Types;       use Types;
with Ada.Text_IO; use Ada.Text_IO;
package body Battery_Levels is

   procedure Alerts(vehicle: Car) is
   begin
      case vehicle.Battery is
         when 100 =>
            Put_Line("your battery is at 100%");
         when 75 .. 99 =>
            Put_Line("your battery is green");
         when 50 ..74 =>
            Put_Line("your battery is amber");
         when 25..49 =>
            Put_Line("Your Battery is RED");
         when 0 ..24 =>
            Put_Line("very low battery please charge vehicle");
        
      end case;
   end Alerts;
end Battery_Levels;
