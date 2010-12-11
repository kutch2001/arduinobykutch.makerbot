include <shapes.scad>  // using Catarina Mota's shapes library

boxheight = 80;
boxwidth = 82;
insideradius = ((((15/16)+1) * 25.4) / 2);
connectorheight = 8; 
connectorwidth = 7;
smaller = 8; 
difference ()
{
	rotate ([0,0,100]) union ()
		{
		translate ([0,0,boxheight/2]) intersection ()
			{
			cylinder (h=boxwidth/2, r1 = (boxwidth/2)+(smaller/2), r2 = (boxwidth/2)-smaller);
			translate ([0,0,boxheight/4]) octagon (boxwidth, boxheight/2);
			}
		translate ([0,0,boxheight/4]) octagon (boxwidth, boxheight/2);
		translate ([-connectorwidth/2,-(boxwidth-(smaller*3+2))/2,boxheight]) cube ([connectorwidth, boxwidth-(smaller*3+2), connectorheight]); 
		}
	translate ([0,0,0]) cylinder (h=(boxheight+connectorheight), r = insideradius, $fn=30);
	rotate ([0,0,10]) translate ([-(connectorwidth+1)/2,-(boxwidth-(smaller*3))/2,0]) cube ([connectorwidth+1, boxwidth-(3*smaller), connectorheight+1]); 
}

/* Old ideas go here
pegwidth = 8;
pegheight = 7;
ridgeheight = 2.5;
ridgedepth = 3.5;
pegoffset = ((boxwidth/2)-16);
holeoffset = ((boxwidth/2)-18);
		translate ([-boxwidth/2,-boxwidth/2,0]) cube ([boxwidth, boxwidth, boxheight]);
	for (spacing2 = [0:10])
		{
		for (spacing = [0:10]) 
			{
			translate ([-37.5+(spacing*7),-32.5+(spacing2*7),-0.001]) rotate ([90,,0]) cube(5, 5, boxwidth-6);
			}
		}
	//to make all the squares open on the inside.  Should prevent random block filling
	translate ([23,2.5,-0.001]) rotate ([90,,0]) cube(5, 5, boxwidth-6);
	translate ([23,-4.5,-0.001]) rotate ([90,,0]) cube(5, 5, boxwidth-6);
	translate ([23,9.5,-0.001]) rotate ([90,,0]) cube(5, 5, boxwidth-6);
	//translate ([25.5,33.5,-0.001]) rotate ([90,,0]) cube(5, 5, boxwidth-6);
	translate ([4.5,26.5,-0.001]) rotate ([90,,0]) cube(5, 5, boxwidth-6);
	translate ([-2.5,26.5,-0.001]) rotate ([90,,0]) cube(5, 5, boxwidth-6);
	translate ([-9.5,26.5,-0.001]) rotate ([90,,0]) cube(5, 5, boxwidth-6);
	translate ([-27.5,9.5,-0.001]) rotate ([90,,0]) cube(5, 5, boxwidth-6);
	translate ([-27.5,2.5,-0.001]) rotate ([90,,0]) cube(5, 5, boxwidth-6);
	translate ([-27.5,-4.5,-0.001]) rotate ([90,,0]) cube(5, 5, boxwidth-6);
	translate ([-9.5,-22.5,-0.001]) rotate ([90,,0]) cube(5, 5, boxwidth-6);
	translate ([-2.5,-22.5,-0.001]) rotate ([90,,0]) cube(5, 5, boxwidth-6);
	translate ([4.5,-22.5,-0.001]) rotate ([90,,0]) cube(5, 5, boxwidth-6);


		for (spacing = [0:7]) 
			{
			translate ([-35+(spacing*10),0,boxheight+ridgeheight]) rotate ([90,225,0]) rightTriangle(5, 5, boxwidth-6);
			}
	for (spacing = [0:8]) 
		{
		translate ([-35+(spacing*8.7),0,ridgedepth]) rotate ([90,225,0]) rightTriangle(5, 5, boxwidth-4);
		}
*/