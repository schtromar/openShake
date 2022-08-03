$fn=200;


module lensHolder(hx, hy, hz, lensD, lensH, lensRidgeD, lensRidgeH, lensInset){
	difference(){
		cube([hx, hy, hz], center=true);
		translate([0,0,0]){
			cylinder(d=lensD, h=hz, center=true);
		}
		translate([0,0,hz/2-lensRidgeH/2-lensInset]){
			#cylinder(d=lensD+(2*lensRidgeD), h=lensRidgeH, center=true);
		}
		
	}
}

//lensHolder(60, 60, 15, 21.9, 8.7, 0.7, 1.6, 3);
lensHolder(100, 100, 30, 70, 25, 3.1, 3.7, 3);