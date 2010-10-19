include <shapes.scad>  // using Catarina Mota's shapes library
//translate ([0,0,0]) cross_braces ();
//translate ([0,35,0]) cross_braces ();
rotate ([0,0,45]) sided();

module sided ()
{
difference ()
{
	rotate ([90,0,0]) cross_braces ();
	rotate ([90,0,0]) translate ([12,0,3]) cube ([3,4,5]);
	rotate ([90,0,0]) translate ([-12,0,3]) cube ([3,4,5]);

}
}

module cross_braces ()
{
union ()
{
	difference ()
	{
		translate ([-55,0,0]) cube ([110,4,12]);
		translate ([-43,0,6]) cube (86,5,6);
		translate ([-43,1.5,12.5]) rotate ([90,270,0]) rightTriangle(6.5,4,5);
		translate ([-52,0,0]) cube ([4,5,8]);
		translate ([-48.01,1,-0.01]) rotate ([90,90,0]) rightTriangle(8,5,6.01);
		translate ([42.99,1.51,12.5]) rotate ([270,270,0]) rightTriangle(6.5,4,5);
		translate ([48,0,0]) cube ([4,5,8]);
		translate ([48.01,1,0]) rotate ([270,90,0]) rightTriangle(8,5,6.01);
	}
}
}