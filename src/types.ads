package Types is

   type Car is record
      Battery : Integer range 0..100 :=100;
      Speed : Integer range 0..120 :=0;
      distance : Integer;
   end record;
end Types;
