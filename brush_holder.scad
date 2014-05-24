$fn=100;
// Flip entire object for printing (bottom->up)
rotate(a=[0,180,225]) {
	// Extruded cylinder for brush handle
	difference() {
		union() {
			translate([26.5,30,-50]) cylinder(r=10,h=50);
			// Ring and hole
			difference() { 
				union() {
					cylinder(h=3, r=20.0);
					difference() {
						hull() {
							translate([8,8,0]) rotate(5,0,0) cube(size=[17,17,3], center=false);
							translate([29,33,0]) cylinder(r=10,h=3);
						}
						translate([10,12,0]) cube(size=[8,8,3]); //#cylinder(r=5,h=3);
					}
				}
				// Hole creator
			  	cylinder(h=4.00, r=18.0);
			}
		}
		translate([26.5,30,-50]) cylinder(r=8.5, h=49);
	}
}