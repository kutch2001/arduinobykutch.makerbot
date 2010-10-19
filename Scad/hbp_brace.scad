include <shapes.scad>  // using Catarina Mota's shapes library


//build platform and support below
//translate ([-51,-51,0]) cube ([102,102,5]);
//translate ([-26,-43,-14]) cube ([51,85,3]);

//to fit on build platfrom (for one piece build, rotate 45 degrees)
rotate (45,0,0) difference ()
{
	union ()
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
}

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