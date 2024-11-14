float a=0;
float A=50;


void setup() {

  background(255);
  size(1920/3, 1080/3);
}

void draw() {
  
  while (a<360) {
    float angle=radians(a);
    float x=A* cos(angle);
    float y= A* sin(angle);
    line(width/2, height/2, width/2+x, height/2-y);
    a=a+10;
  }
}
