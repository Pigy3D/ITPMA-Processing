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
      float d= dist(mouseX, mouseY, x, y);
      circle(x, y, d);
      y+=10;
    }
    y=0;
  }
}
