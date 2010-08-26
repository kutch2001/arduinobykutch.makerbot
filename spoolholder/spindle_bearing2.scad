difference()
{
	union ()
	{
		cylinder(10, 22.7, 22.7, center=true);
		translate ([0,0,-8])cylinder(3, 30, 30);
	}
	translate ([0,0,-8]) cylinder (13,11.5,11.5);
}