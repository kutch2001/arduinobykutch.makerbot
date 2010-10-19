include <shapes.scad>  // using Catarina Mota's shapes library

//main piece to hold bolts
difference ()
{
union ()
{
	translate ([-26,0,-20]) cube ([52,10,40]);
	translate ([-30,0,6]) cube ([60,8,2]);
}
translate ([0,10,0]) hexagon (9,41);
translate ([-10,2,-14]) cube ([20,8,12]); //pulley indentation
translate ([-9.99,10.01,-8]) rotate ([0,0,90]) rightTriangle(8,8,12); //bevel
translate ([9.99,10.01,-8]) rotate ([0,0,180]) rightTriangle(8,8,12); //bevel
}
translate ([20,20,20]) rotate ([90,0,0]) hexagon (5,7); //nut1 indentation
translate ([20,20,20]) rotate ([90,0,0]) hexagon (5,7); //nut2 indentation

/*	union ()
	{
		//left piece
		translate ([-26,-48,-11]) cube ([52,20,2]);
		translate ([-48,-48,-11]) cube ([96,5,2]);
		translate ([-48,-48,-9]) cube ([96,2,7]);
		corner();
		translate ([0,0,0]) rotate ([0,0,270]) corner();
		translate ([-12,-46,-9]) rotate ([0,90,0]) rightTriangle(7,12,2);
		translate ([12,-46,-9]) rotate ([0,90,0]) rightTriangle(7,12,2);
	}
	translate ([-22,-36,-11]) cylinder (2,2,2);
	translate ([-22,-38,-11]) cylinder (2,2,2);
	translate ([21,-34,-11]) cylinder (2,2,2);
	translate ([21,-36,-11]) cylinder (2,2,2);

module corner ()
{
difference ()
{
union ()
	{
	translate ([51,-53,-3]) cube ([2,10,18]);
	translate ([43,-53,-3]) cube ([10,2,18]);
	translate ([43,-53,-5]) cube ([10,5,3]);
	translate ([48,-53,-5]) cube ([5,10,3]);
	translate ([48,-45.5,-4.99]) rotate ([90,270,180]) rightTriangle(6.01,5,5);
	translate ([45.5,-48,-4.99]) rotate ([90,270,90]) rightTriangle(6.01,5,5);
	}
translate ([48,-48,-5])  rotate ([90,45,0]) cube ([7,7,5.5]);
}
}
*/