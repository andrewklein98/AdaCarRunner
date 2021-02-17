with Ada.Text_IO; use Ada.Text_IO;
with Types;       use Types;
with Go_Distance; use Go_Distance;
with Battery_Levels; use Battery_Levels;
with battery_use; use battery_use;
package body Drive is
   procedure run(vehicle : Car) is
      task t is
         entry Go;
         entry batt;
      end t;
      task body t is
         d : Integer;
         b :Integer;
         volvo : Car := vehicle;
      begin
         accept Go;
         while (volvo.distance >0 and volvo.Battery>0) loop
            Put_Line("you have " & Integer'Image(volvo.distance)& " km left");
            d :=Reduce_Distance(volvo);
            b := Use_Battery(volvo);
            Alerts(volvo);
            delay 1.0;
         end loop;
         if volvo.distance = 0 then
            Put_Line("You have arrived at your destination");
         end if;
         if volvo.Battery = 0 then
            Put_Line("you have run out of power and are stranded");
            end if;
      end t; 
   begin
      t.Go;
      t.batt;
      end run;
   end Drive;
