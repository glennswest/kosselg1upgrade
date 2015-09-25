use <MCAD/nuts_and_bolts.scad>;


module body()
{
difference(){
       translate([0,-90,0]) cube([20,180,10]);
       translate([0,-90,1.5]) cube([15,180,3.6]);
       translate([10,-82.5,9]) rotate([0,180,0]) boltHole(3.2,length=11);
       translate([10, 82.5,9]) rotate([0,180,0]) boltHole(3.2,length=11);
}
}


translate([0,0,20]) rotate([0,90,0]) body();