
//
// MacBook pro 2015

// unit is millimeter

t = 1.5; // thickness
h = 18; // height
d0 = 6.5; // rear depth
d1 = 5.0; // front depth

linear_extrude(height=20) {
  polygon([
    [ 0, 0 ], [ t, 0 ], [ t, h ], [ t + d0, h ],
    [ t + d1, 0 ], [ t + d1 + t, 0 ], [ t + d0 + t, h + t ],
    [ 0, h + t ],
  ]);
}

