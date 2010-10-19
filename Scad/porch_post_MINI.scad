include <shapes.scad>  // using Catarina Mota's shapes library

boxheight = 20;
boxwidth = 82;
insideradius = ((((15/16)+1) * 25.4) / 2)+1;
pegwidth = 8;
pegheight = 7;
pegoffset = ((boxwidth/2)-16);
holeoffset = ((boxwidth/2)-18);
union()
{
	difference ()
	{
		translate ([-boxwidth/2,-boxwidth/2,0]) cube ([boxwidth, boxwidth, boxheight]);
		translate ([0,0,0]) cylinder (h=boxheight, r = insideradius, $fn=30);
		translate ([holeoffset+4,holeoffset-4,0]) rotate (a=45) cube ([pegwidth, pegwidth, boxheight]);
		for (spacing = [0:7]) 
			{
			translate ([-35+(spacing*10),0,3.5]) rotate ([90,225,0]) rightTriangle(5, 5, boxwidth-4);
			}
		//translate ([holeoffset-4,holeoffset-4,0]) rotate (a=45) cube ([pegwidth+1, pegwidth+1, pegheight+1.5]);
		//translate ([holeoffset-4,-holeoffset-4,0]) rotate (a=45) cube ([pegwidth+1, pegwidth+1, pegheight+1.5]);
		//translate ([-holeoffset+4,holeoffset-4,0]) rotate (a=45) cube ([pegwidth+1, pegwidth+1, pegheight+1.5]);
		//translate ([-holeoffset+4,-holeoffset-4,0]) rotate (a=45) cube ([pegwidth+1, pegwidth+1, pegheight+1.5]);
	}
	//translate ([pegoffset-4,pegoffset-4,boxheight]) rotate (a=45) cube ([pegwidth, pegwidth, pegheight]);
	//translate ([pegoffset-4,-pegoffset-4,boxheight]) rotate (a=45) cube ([pegwidth, pegwidth, pegheight]);
	//translate ([-pegoffset+4,pegoffset-4,boxheight]) rotate (a=45) cube ([pegwidth, pegwidth, pegheight]);
	//translate ([-pegoffset+4,-pegoffset-4,boxheight]) rotate (a=45) cube ([pegwidth, pegwidth, pegheight]);
}
