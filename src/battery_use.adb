with Types; use Types;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
package body battery_use is
   function Use_Battery(vehicle : in out Car) return Integer is
   begin
      vehicle.Battery := vehicle.Battery  - vehicle.speed/12;
      if vehicle.Speed/12 = 0 then
         vehicle.Battery := vehicle.Battery -1;
         end if;
      return vehicle.Battery;
   end Use_Battery;

end battery_use;
