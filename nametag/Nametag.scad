$fn=100;

font= "Open Sans:style=extrabold";

module base(width, lwidth, height){
    difference(){
        union(){
            translate([lwidth, 0, 0]) square([width-lwidth, 19]);
            polygon(points=[[0, height/2], [lwidth, height], [lwidth, 0]]);
        }
        translate([lwidth/2, height/2])circle([2]);
    }
}

module nametag(text, width){
    lwidth=10;
    height=19;
    difference(){
        base(width, lwidth, height);
        translate([(width+lwidth)/2, 5, 0]){
            text(text=text, font=font, size=10, halign="center");
        }
    }
    translate([0, height+5, 0]) base(width, lwidth, height);
}

//base(100);

nametag("@uberardy", 95);