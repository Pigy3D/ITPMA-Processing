int x=0;

void setup() {
  size(1920/3, 1080/3);
  background(255);
}

void draw() {
  textSize(128);
  fill(0);
  text(x,40,120);
}


void mouseClicked() {
  x++;
  if(x==5){
  x=0;
  }
  background(255);
}
