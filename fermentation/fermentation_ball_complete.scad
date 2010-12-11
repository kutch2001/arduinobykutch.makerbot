/*
This is for a "burper" that fits on top of the old style BALL canning jars. This can be
used for fermenting most anythng in small batches. It will prevent air from getting in when the middle ring is filled with water. The water must be above the notch in the top.
Thank you to Catarina Mota (yet again) for her shapes.scad file!!
*/
include <shapes.scad>

mm_per_inch = 25.4;
rim_height = 0.256*mm_per_inch;
cap_height = 1.5*mm_per_inch;
bottom_thickness = 2; //in millimiters
jar_outside_radius = (2.75*mm_per_inch)/2;
rim_outside_radius = (2.65*mm_per_inch)/2;
rim_thickness = 0.24*mm_per_inch;
inside_well_height = cap_height-bottom_thickness;
//inside_well_height = 0.4*mm_per_inch;
inside_well_radius = (2.25*mm_per_inch)/2;
inside_well_width = 0.85*mm_per_inch;
cap_radius = (1*mm_per_inch)/2;
cap_wall_thickness = jar_outside_radius-rim_outside_radius;
exhaust_width = 5;
wall_thickness = 0.6*mm_per_inch;

difference ()
	{
	union ()
		{
		tube(cap_height, jar_outside_radius, wall_thickness);
		cylinder (h = bottom_thickness,r = jar_outside_radius); //bottom
		translate ([0,0,cap_height/2]) cube (size=[exhaust_width*1.5,exhaust_width*1.5,cap_height],center=true); //exhaust tube outside
		}
	translate ([0,0,cap_height/2]) cube (size=[exhaust_width,exhaust_width,cap_height],center=true); //exhaust tube
	tube(rim_height, rim_outside_radius, rim_thickness); //rim for jar
	}

//cap is here
translate ([0,0,cap_height*1.2]) difference ()
	{
	union ()
		{
		tube (inside_well_height, cap_radius, cap_wall_thickness);
		difference ()
			{
			translate ([0,0,inside_well_height]) sphere (r=cap_radius);
			translate ([0,0,inside_well_height]) sphere (r=cap_radius-cap_wall_thickness);
			translate ([0,0,-(inside_well_height*2.5)]) cylinder (h=inside_well_height*3.5, r=cap_radius);
			}
		translate ([0,0,inside_well_height+cap_radius-0.5]) cylinder (h=25, r1=1,r2=cap_radius/2); //handle
		}
	translate ([0,cap_radius/2,0]) cube ([rim_thickness / 2,rim_thickness*2,rim_thickness / 2]);
	}
