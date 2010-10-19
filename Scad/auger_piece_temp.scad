include <shapes.scad>  // using Catarina Mota's shapes library
include <makescrew.scad>

cylinderheight=5;
cylinderradius=1;
threadwidth=0.1;
threaddepth=0.5;
threadheight=0.5;
pitchangle=40;
reversethread=1;
depthtolerance=0;
heighttolerance=0.1;
interfaceheight=0.4;

difference ()
{
union ()
	{
	screw(cylinderheight, cylinderradius, threadwidth, threaddepth, threadheight, pitchangle, reversethread, depthtolerance, heighttolerance);
	cylinder (h=cylinderheight+0.75, r = 0.75, $fn=20);
	}
translate ([0,0,5.5]) cylinder (h=0.6, r=2.5);
cylinder (h=0.3,r=2.5);
translate ([0,0,0.55/2])box (w=0.5,h=0.5,d=interfaceheight+0.3);
};
translate ([0,0,5.49])box (w=0.5,h=0.5,d=interfaceheight+0.01);
