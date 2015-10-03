use <MCAD/nuts_and_bolts.scad>;

//Rascal Micro case
$fs=.25;
union()
{
// uncomment this if you want external attach tabs
  /*
	difference()
	{
		union()
		{	
			translate([30,-7,0]) cylinder(2,5,5);
			translate([25,-7,0]) cube([10,5,2]);			
			translate([90,-7,0]) cylinder(2,5,5);
			translate([85,-7,0]) cube([10,5,2]);
			translate([30,60,0]) cylinder(2,5,5);
			translate([25,55,0]) cube([10,5,2]);		
			translate([90,60,0]) cylinder(2,5,5);
			translate([85,55,0]) cube([10,5,2]);
		}
		translate([30,-7,-1]) cylinder(4,1,4);
		translate([90,-7,-1]) cylinder(4,1,4);
		translate([30,60,-1]) cylinder(4,1,4);
		translate([90,60,-1]) cylinder(4,1,4);
	}
*/

    difference(){
       translate([-15,-5.5,0]) cube([130,4,15]);
       translate([-2,-7,8]) cube([104,8,10]);
       translate([-8,-5,7.5]) rotate([-90,90,0]) boltHole(3,length=10);
       translate([109,-5,7.5]) rotate([-90,90,0]) boltHole(3,length=10);
       translate([-8,-2,7.5]) rotate([-90,90,0]) nutHole(3);
       translate([109,-2,7.5]) rotate([-90,90,0]) nutHole(3); 
    }
   
// hollowed out box
	difference()
	{
		minkowski()  		
		{
			 cube([101,52.5,6]);
             
			 cylinder(2,2,2);
		}
		translate([1,1,3]) minkowski()  		
		{
			 cube([99,50.5,4]);
			 cylinder(2,2,2);
		}

		translate([80,27,-1]) cylinder(5,8,8);  		//finger hole
		translate([-3,2.5,5]) cube([3,9.5,4]); 		//port hole power
		translate([-3,17,5]) cube([3,9.5,4]); 		//port hole USB1
		translate([-3,33,5]) cube([3,9.5,4]); 	//port hole USB2

		translate([2,1,1]) cube([10.5,9,3]); 

		translate([30,7,-1]) cylinder(4.5,1,4); 			//screw holes
		translate([90,7,-1]) cylinder(4.5,1,4);
		translate([30,46.5,-1]) cylinder(4.5,1,4);
		translate([90,46.5,-1]) cylinder(4.5,1,4);
	}	

	translate([-1.5,44,6]) cube([1,6,1]); 			//snap ledge
	translate([5,-1.5,6]) cube([5,1,1]); 				//snap ledge
	translate([11,-1.5,6]) cube([5,1,1]); 				//snap ledge
	translate([11,53,6]) cube([6,1,1]); 				//snap ledge
	translate([101.5,7,6.5]) cube([1,6,1]); 			//snap ledge
	translate([101.5,33,6.5]) cube([1,6,1]);			//snap ledge


}

