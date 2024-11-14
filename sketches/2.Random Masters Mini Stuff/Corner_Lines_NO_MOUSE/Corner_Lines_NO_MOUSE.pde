int i=height;

void setup() {
  //size(1920/3, 1080/3);
  fullScreen();
  background(0);
}

void draw() {
  // lower % number mmeans more lines
  if (i>0) {
    println(i);
    i--;
    if (i%3==0) {
      stroke(255);
      line(width/2, i, 0, 0);
      line(width/2, i, width, 0);
    }
  } else {
    while (i<height) {
      i++;
    }
  }
}

void mousePressed() {
  background(0);
}
