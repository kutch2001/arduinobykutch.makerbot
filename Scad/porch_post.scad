include <shapes.scad>  // using Catarina Mota's shapes library

boxheight = 25.4*4.5;
boxwidth = 88.9;
insideradius = (((15/16)+1) * 25.4) / 2;
pegwidth = 5;
pegheight = 7;
pegoffset = ((boxwidth/2)-16);
holeoffset = ((boxwidth/2)-15.5);
union()
{
	difference ()
	{
		translate ([-boxwidth/2,-boxwidth/2,0]) cube ([boxwidth, boxwidth, boxheight]);
		translate ([0,0,0]) cylinder (h=boxheight, r = insideradius, $fn=30);
		translate ([holeoffset,holeoffset,0]) cube ([pegwidth+1, pegwidth+1, pegheight+1.5]);
		translate ([holeoffset,-holeoffset,0]) cube ([pegwidth+1, pegwidth+1, pegheight+1.5]);
		translate ([-holeoffset,holeoffset,0]) cube ([pegwidth+1, pegwidth+1, pegheight+1.5]);
		translate ([-holeoffset,-holeoffset,0]) cube ([pegwidth+1, pegwidth+1, pegheight+1.5]);
	}
	translate ([pegoffset,pegoffset,boxheight]) cube ([pegwidth, pegwidth, pegheight]);
	translate ([pegoffset,-pegoffset,boxheight]) cube ([pegwidth, pegwidth, pegheight]);
	translate ([-pegoffset,pegoffset,boxheight]) cube ([pegwidth, pegwidth, pegheight]);
	translate ([-pegoffset,-pegoffset,boxheight]) cube ([pegwidth, pegwidth, pegheight]);
}
