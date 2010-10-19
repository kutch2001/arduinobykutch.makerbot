include <shapes.scad>  // using Catarina Mota's shapes library

//build platform
//translate ([-51,-51,-10]) cube ([102,102,5]);

difference ()
{
	translate ([-47.5,-48,0]) cube ([95,96,4]);
	rotate ([90,90,180]) translate ([-2,45.001,25.5]) connector (5);
	rotate ([90,90,180]) translate ([-2,45.001,-20.5]) connector (5);
	rotate ([180,90,180]) translate ([-2,45.501,27.5]) connector (5);
	rotate ([180,90,180]) translate ([-2,45.501,-27.5]) connector (5);
}
translate ([-32.5,-34,4]) cone (5,3.5);
translate ([2.5,-44.2,4]) cone (5,3.5);
translate ([37.5,-34,4]) cone (5,3.5);

translate ([-32.5,15.5,4]) cone (5,3.5);
translate ([2.5,30,4]) cone (5,3.5);
translate ([37.5,15.5,4]) cone (5,3.5);

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
