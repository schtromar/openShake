module diffGratHolder(hx, hy, hz, gx, gy, gz, sides, groove){
	difference(){
		cube([hx, hy, hz], center=true);
		translate([0,0,hz/2-gz/2]){
			#cube([gx, gy, gz], center=true);
		}
		translate([0,0,hz/2-gz/2+groove]){
			cube([gx-sides, hy, gz], center=true);
		}
		
	}
}

//diffGratHolder(60, 15, 18, 51, 1.5, 6, 6, 2);
diffGratHolder(100, 15, 18, 91, 1.4, 6, 6.5, 2.5);