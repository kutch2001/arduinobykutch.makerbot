include <shapes.scad>  // using Catarina Mota's shapes library

boxheight = 22;
boxwidth = 82;
insideradius = ((((15/16)+1) * 25.4) / 2);
connectorheight = 8;
connectorwidth = 7;
smaller = 8;
difference ()
{
	rotate ([0,0,90]) union()
	{
		translate ([-connectorwidth/2,-(boxwidth-(smaller*3+2))/2,boxheight]) cube ([connectorwidth, boxwidth-(smaller*3+2), connectorheight]);
		translate ([0,0,0]) cylinder (h=boxheight, r = (boxwidth/2)-smaller);
	}
	translate ([0,0,0]) cylinder (h=(boxheight+connectorheight), r = insideradius, $fn=30);
	translate ([-(connectorwidth+1)/2,-(boxwidth-(smaller*3))/2,0]) cube ([connectorwidth+1, boxwidth-(3*smaller), connectorheight+1]);
}
