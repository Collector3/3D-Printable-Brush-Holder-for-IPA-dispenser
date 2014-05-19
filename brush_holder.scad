$fn=100;
// Ring and hole
difference() { 
	union() {
		cylinder(h=3, r=22.5);
		difference() {
			// Brush holder
			hull() {
				translate([8,8,0]) rotate(5,0,0) cube(size=[20,20,3], center=false);
				translate([25,28,0]) rotate(5,0,0) cylinder(r=2,h=3);
			}

			// Holder hole
			translate([15,16,0]) rotate(5,0,0) {
				cube(size=[11,11,3], center=false);
			}
		}
	}
  	cylinder(h=4.00, r=21.0);
}
