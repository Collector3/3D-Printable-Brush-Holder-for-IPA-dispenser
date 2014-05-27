$fn=100;
// Flip entire object for printing (bottom->up)
rotate(a=[0,180,225]) {
difference() {
   difference() {
	// Extruded cylinder for brush handle
		union() {
			translate([26.5,30,-70]) cylinder(r=10,h=70);
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
		translate([26.5,30,-70]) cylinder(r=8.5, h=69);
	}
   // Drain hole
	translate([26.5,30,-1]) #cylinder(r=6,h=5);
   }
}