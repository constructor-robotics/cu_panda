// panda_short_finger_adapted.scad
// Load STL, move origin to center, and rescale from mm to m

stl_file = "panda_short_finger.stl";
mm_to_m = 0.001; // scale factor

rotate(180, [0,1,-1])
union() {
    translate([-0.01,-0.009,0]) cube([0.02, 0.018, 0.007], center=false);
difference() {
translate([-0.01, -0.009, 0.0]) scale([mm_to_m, mm_to_m, mm_to_m]) import(stl_file, convexity=10, center=true);
translate([0,0,-0.005]) cube([0.01, 0.01, 0.01], center=true);
}
}
