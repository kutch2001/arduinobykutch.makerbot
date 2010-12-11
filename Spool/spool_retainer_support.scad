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
box(width, length, height);

translate ([0,length/2+connector_length,0]) box(width, connector_length, height);
}