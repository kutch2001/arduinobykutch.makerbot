include <shapes.scad>  // using Catarina Mota's shapes library

//build platform
//translate ([-51,-51,-10]) cube ([102,102,5]);

translate ([-47.5,-48,0]) cube ([95,96,4]);
translate ([20,48,0]) cube ([15,3,15]);
translate ([-35,48,0]) cube ([15,3,15]);
translate ([-50.5,-28,0]) cube ([3,15,15]);
translate ([-50.5,18,0]) cube ([3,15,15]);

translate ([-32.5,-34,4]) cone (5,3.5);
translate ([2.5,-44.2,4]) cone (5,3.5);
translate ([37.5,-34,4]) cone (5,3.5);

translate ([-32.5,15.5,4]) cone (5,3.5);
translate ([2.5,30,4]) cone (5,3.5);
translate ([37.5,15.5,4]) cone (5,3.5);
