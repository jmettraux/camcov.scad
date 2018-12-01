
//
// MacBook pro 2015

// unit is millimeter

t = 1.0; // thickness
h = 16.0; // height
d0 = 5.1; // rear depth
d1 = 4.2; // front depth
l = 25.0; // length

difference() {

  linear_extrude(height=l) {
    polygon([
      [ 0, 0 ], [ t, 0 ], [ t, h ], [ t + d0, h ],
      [ t + d1, 0 ], [ t + d1 + t, 0 ], [ t + d0 + t, h + t ],
      [ 0, h + t ],
    ]);
  }

  translate([ d0 + t, h / 2, l * 0.86 ])
  rotate([ 90, 90, 90 ])
    linear_extrude(height=2) text("思想罪", font="Hiragino Sans", size=4.2);
  //translate([ d0 + t, h / 4, l * 0.86 ])
  //rotate([ 90, 90, 90 ])
  //  linear_extrude(height=2) text("THOUGHT CRIME", font="Helvetica", size=2.8);
}

