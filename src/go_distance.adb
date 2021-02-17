with Types; use Types;
package body Go_Distance is
   function Reduce_Distance(vehicle :out Car) return Integer is
   begin
      vehicle.distance:=vehicle.distance-vehicle.speed;
      return vehicle.distance;
   end Reduce_Distance;
end Go_Distance;
