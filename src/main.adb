with Types; use Types;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
with battery_use; use battery_use;
with Battery_Levels; use Battery_Levels;
with Go_Distance; use Go_Distance;
with Drive; use Drive;
procedure Main is
   Volvo : Car;
   DistanceLeft:Integer;
begin
   Put_Line("Please enter how far you are going");
   Get(Volvo.distance);
   Put_Line("Please enter how fast you are going");
   Get(Volvo.Speed);
   run(Volvo);
end Main;
