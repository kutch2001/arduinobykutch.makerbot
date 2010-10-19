include <shapes.scad>  // using Catarina Mota's shapes library
//translate ([0,0,0]) cross_braces ();
//translate ([0,35,0]) cross_braces ();
rotate ([0,0,45])difference ()
{
	union ()
	{
		translate ([12.5,-5,0]) cube ([2,100,6]);
		translate ([-12.5,-5,0]) cube ([2,100,6]);
		translate ([-12.5,50,0]) cube ([25,5,2]);
		translate ([-12.5,70,0]) cube ([25,5,2]);
		translate ([-12.5,90,0]) cube ([25,5,2]);
	}
	translate ([-55,0,0]) cube ([110,4,3]);
	translate ([-55,35,0]) cube ([110,4,3]);
	
}

module cross_braces ()
{
union ()
{
	difference ()
	{
		translate ([-55,0,0]) cube ([110,2,12]);
		translate ([-43,0,6]) cube (86,2,6);
		translate ([-43,0.5,12.5]) rotate ([90,270,0]) rightTriangle(6.5,4,3);
		translate ([-52,0,0]) cube ([4,2,8]);
		translate ([-48.01,1,-0.01]) rotate ([90,90,0]) rightTriangle(8,5,2.01);
		translate ([42.99,1,12.5]) rotate ([270,270,0]) rightTriangle(6.5,4,	3);
		translate ([48,0,0]) cube ([4,2,8]);
		translate ([48.01,1,0]) rotate ([270,90,0]) rightTriangle(8,5,2.01);
	}
}
}