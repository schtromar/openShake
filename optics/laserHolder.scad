$fn=100;

module laserHolder(x, y, z, d, h, fx, fy, fz){
	translate([0,0,z/2]){
		difference(){
			cube([x, y, z], center=true);
			translate([0,0,h-z/2]){
				rotate([0,90,0]){
					#cylinder(h=x, d=d, center=true);
				}
			}
		}
		translate([0,0,-z/2+fz/2]){
			cube([fx, fy, fz], center=true);
		}
	}
}

laserHolder(15, 15, 55, 12.2, 48, 45, 45, 3);