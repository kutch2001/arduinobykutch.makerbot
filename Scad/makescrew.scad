/*
 *  makescrew.scad
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

// //////////////////////////////////////////
//screw (40, 10, 1, 2, 2, 3, 1, 0, 0);
// //////////////////////////////////////////



module screw(cylinderheight, cylinderradius, threadwidth, threaddepth, threadheight, pitchangle, reversethread, depthtolerance, heighttolerance) {
	rotationangle = reversethread*(atan(threadwidth/(cylinderradius+threaddepth)));
	raisecube = sin(pitchangle)*threadwidth;
echo (rotationangle);
echo (raisecube);
	 union () {
		for (i=[0:((cylinderheight+threadheight)/raisecube)]) {
			translate (v=[0,0,raisecube*i]) {
				rotate (a=[0,0,rotationangle*i]){
					rotate (a=[reversethread*pitchangle, 0, 0]) {	
						cube (size=[cylinderradius+threaddepth-depthtolerance, threadwidth, threadheight-heighttolerance], center=false);
					} // end rotate
				} // end rotate
			} // end translate
		} // end for
	} // end union
} // end module


