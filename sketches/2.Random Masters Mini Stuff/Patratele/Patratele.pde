int x=0;
int y=0;

void setup() {

  size(1920/2, 1080/2);
  background(255);
}

void draw() {

  while (x<width) {
    line(x, 0, x, height);
    x=x+10;
  }
  while (y<height) {
    line(0,y,width,y);
    y=y+10;
  }
}
