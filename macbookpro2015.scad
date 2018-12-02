
//
// MacBook pro 2015

// unit is millimeter

t = 1.0; // thickness
h = 16.0; // height
d0 = 5.0; // rear depth
d1 = 3.5; // front depth
l = 25.0; // length

difference() {
  //translate([ t / 2, 0, 0 ])
  linear_extrude(height=l) {
    hull() {
      translate([ 0, 0, 0 ]) circle(t / 2);
      translate([ 0, h - 5 * t, 0 ]) circle(t / 2);
    }
    hull() {
      translate([ 0, h - 5 * t, 0 ]) circle(t / 2);
      translate([ 0.45 * t, h - 2.5 * t, 0 ]) circle(t / 2);
    }
    hull() {
      translate([ 0.45 * t, h - 2.5 * t, 0 ]) circle(t / 2);
      translate([ 1.5 * t, h + t / 2, 0 ]) circle(t / 2);
    }
    hull() {
      translate([ 1.5 * t, h + t / 2, 0 ]) circle(t / 2);
      translate([ d0 + t, h + t / 2, 0 ]) circle(t / 2);
    }
    hull() {
      translate([ d0 + t, h + t / 2, 0 ]) circle(t / 2);
      translate([ d1 + t, 0, 0 ]) circle(t / 2);
    }
    translate([ d0 - t / 3.5 - t / 2, h - t - 2.7, 0 ]) square(t);
  }
  translate([ d0 + t / 2.9, h / 2.1, l * 0.9 ]) rotate([ 90, 90, 90 ])
    linear_extrude(height=2) text("思想罪", font="Hiragino Sans", size=4.9);
}

