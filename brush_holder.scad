$fn=100;
// Ring and hole
difference() { 
	union() {
		cylinder(h=3, r=20.0);
		difference() {
			// Brush holder
			hull() {
				translate([8,8,0]) rotate(5,0,0) cube(size=[23,23,3], center=false);
				translate([25,28,0]) rotate(5,0,0) cylinder(r=2,h=3);
			}

			// Holder hole
			translate([19,21,0]) {
				#cylinder(r=8.5, h=3);
			}
		}
	}
  	cylinder(h=4.00, r=18.0);
}
