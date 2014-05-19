$fn=300;
// Ring and hole
difference() { 
	union() {
		cylinder(h=3.25, r=22.5);
		difference() {
			// Brush holder
			hull() {
				translate([2,2,0]) rotate(5,0,0) #cube(size=[20,20,3.25], center=false);
				translate([19,22,0]) rotate(5,0,0) #cylinder(r=2,h=3.25);
			}
		
			// Holder hole
			translate([14,16,0]) rotate(5,0,0) {
				cube(size=[6,6,3.25], center=false);
			}
		}
	}
  	cylinder(h=4.00, r=21.0);
}

