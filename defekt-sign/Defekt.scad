w = 150;
h = 90;
corner_radius = 5;
hole_radius = 2.5;

//NICHT SCHALTEN
//CYBER
//NICHT CYBER 
//PUTT
//UFF
//MEH
//Jemand müsste mal

difference(){
    rounded_square(w, h, corner_radius);

    translate([5, h-5]) circle(hole_radius);
    translate([w-5, h-5]) circle(hole_radius);
    
    translate([w/2, h-14])
    text("DEFEKT", 25, "Open Sans:style=ExtraBold", halign="center", valign="top");
    translate([w/2, h/2])
    square([w-10, 2], center=true);
    
    translate([5, 32])
    text("Datum:", 6, "Open Sans:style=Bold", halign="left", valign="baseline");
    
    translate([5, 15])
    text("Wer:", 6, "Open Sans:style=Bold", halign="left", valign="baseline");
    
    translate([w/2, 32])
    text("Warum:", 6, "Open Sans:style=Bold", halign="left", valign="baseline");
}



module rounded_square(width, height, corner_radius){
    w = width - corner_radius * 2;
    h = height - corner_radius * 2;
    translate([corner_radius, corner_radius])
    hull(){
        circle(corner_radius);
        translate([w, 0]) circle(corner_radius);
        translate([0, h]) circle(corner_radius);
        translate([w, h]) circle(corner_radius);
    }
}