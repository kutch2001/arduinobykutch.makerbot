/*
 *  tubescrew.scad
 *  Copyright (C) 2010  Philip Patterson <booktinker@gmail.com>
 *  
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
*/

include <shapes.scad>  // using Catarina Mota's shapes library
include <makescrew.scad>


threaddepth = 2;
threadheight = 2;
pitchangle = 3;

reversethread=1; // 1 = normal, -1 = reversed

cylinderheight = 15;
cylinderradius = 10;

screwhexheight=10;
screwhexdepth=12;

depthtolerance=0.5;
heighttolerance=0.5;

threadwidth = 3; 


outerradius=sqrt(pow((cylinderradius+threaddepth),2)+pow(threadwidth,2))-(cylinderradius+threaddepth);


difference () {
	union () {
		cylinder (h=cylinderheight, r=cylinderradius, center=true);
		difference () {
			translate(v=[0, 0, -(cylinderheight/2 + threadheight) ]) {
			screw(cylinderheight, cylinderradius, threadwidth, threaddepth, threadheight, pitchangle, reversethread, depthtolerance, heighttolerance);
			} // end translate
			
			translate (v=[0,0,cylinderheight/2+threadheight]) {
			cylinder (h=threadheight*2, r=(cylinderradius+threaddepth)+1, center=true);
			} // end translate
		
			translate (v=[0,0,-(cylinderheight/2+threadheight)]) {
			cylinder (h=threadheight*2, r=(cylinderradius+threaddepth)+1, center=true);
			} // end translate
		
			difference () {
			cylinder (h=(cylinderheight+threadheight*2)+4, r=cylinderradius+threaddepth+outerradius+1, center=true);
			cylinder (h=(cylinderheight+threadheight*2)+5, r=cylinderradius+threaddepth-depthtolerance, center=true);
			} // end difference // this smooths out the threads
		} // end difference  
			translate (v=[0,0,(cylinderheight/2+screwhexheight/2)]) {
			hexagon (screwhexdepth, screwhexheight);
			} // end translate

/* remove comments to add bottom hex
			translate (v=[0,0,-(cylinderheight/2+screwhexheight/2)]) {
			hexagon (screwhexdepth, screwhexheight);
			} // end translate
*/

	} // end union
	cylinder (h = 100, r = 2.5, center=true);
} // end difference
