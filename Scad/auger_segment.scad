include <shapes.scad>  // using Catarina Mota's shapes library
include <makescrew.scad>

cylinderheight=5*25.4;
cylinderradius=15.5;
threadwidth=2;
threaddepth=3;
threadheight=20;
pitchangle=25;
reversethread=1;
depthtolerance=0;
heighttolerance=0.1;
interfaceheight=0.4;

difference ()
{
union ()
	{
	translate ([0,0,0])screw(cylinderheight, cylinderradius, threadwidth, threaddepth, threadheight, pitchangle, reversethread, depthtolerance, heighttolerance);
	cylinder (h=cylinderheight+1.15, r = 10, $fn=15);
	}
translate ([0,0,110]) cylinder (h=80, r=cylinderradius+10);
translate ([0,0,-1]) cylinder (h=21,r=cylinderradius+10); //bottom to make smooth surface
//translate ([0,0,0.95/2])box (w=0.5,h=0.5,d=interfaceheight+0.3);
};
