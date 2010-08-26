difference()
{
	union ()
	{
		cylinder(10, 23, 23, center=true);
		translate ([0,0,-15])cylinder(10, 30, 30);
	}
	translate ([0,0,-15]) cylinder (20,11,11);
}