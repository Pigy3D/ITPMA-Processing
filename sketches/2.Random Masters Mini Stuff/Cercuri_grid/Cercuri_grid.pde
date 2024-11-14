void setup() {
  size(1920/3, 1080/3);
  background(255);
}

void draw() {
  int x=0;
  int y=0;
  while (x<width) {
    x+=10;

    while (y<height) {
      circle(x, y, 10);
      y+=10;
    }
    y=0;
  }
}
