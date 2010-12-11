include <shapes.scad>  // using Catarina Mota's shapes library

screwsize=4;
length=70;
width=15;
middle=5;
height=2;
triangle_base=20;
triangle_height=10;
triangle_offset=16;
connector_width=6;
connector_height=4;
connector_length = 10;
set();
translate ([width+4,0,0]) set();

module set()
{
//base
difference ()
	{
	union ()
		{
		box(width, length, height);
		translate ([0,(length-connector_length)/2,height]) box(connector_width, connector_length, connector_height);
		translate ([0,length/2-triangle_offset,0]) rotate ([90,90,270]) rightTriangle(triangle_height, triangle_base, width);
		}
	translate ([0,(length-connector_length)/2,height/2]) octagon (screwsize,connector_height+height);
	}

//connector base
difference ()
	{
	union ()
		{
		translate ([0,length/2+connector_length,0]) box(width, connector_length, height);
		translate ([0,length/2+connector_length,height]) box(connector_width, connector_length, connector_height);
		}
	translate ([0,length/2+connector_length,height/2]) octagon (screwsize,connector_height+height);
	}
}