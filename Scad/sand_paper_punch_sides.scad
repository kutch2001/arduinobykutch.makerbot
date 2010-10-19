include <shapes.scad>  // using Catarina Mota's shapes library

//build platform
//translate ([-51,-51,-10]) cube ([102,102,5]);
piece ();
translate ([0,15,0]) piece();
translate ([20,0,0]) piece();
translate ([20,15,0]) piece();
module piece ()
{
translate ([0,0,0]) cube ([15,3,15]);
rotate ([180,90,0]) translate ([-2,-5.5,-7.5]) connector (4);
}

module connector(length) 
{
difference() 
	{
	cube(size = [length,5,10], center = true);
	translate(v= [0,1,6]) { rotate(a=[55,0,0]) 
		{
		cube(size = [length+2,5,10], center = true);
		}
	}
	translate(v= [0,1,-6]) { rotate(a=[-55,0,0]) 
		{
		cube(size = [length+2,5,10], center = true);
		}
	}
	}
}
