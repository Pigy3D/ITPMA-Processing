int c=0;

void setup() {

  size(1920/3, 1080/3);
  background(255);
}

void draw() {

  while (c<width) {
    line(c, 0, c, height);
    c=c+10;
  }
}
