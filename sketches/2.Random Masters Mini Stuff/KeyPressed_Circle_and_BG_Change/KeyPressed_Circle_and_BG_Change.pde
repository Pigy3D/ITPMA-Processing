float r, g, b;
boolean drawCircle;
char circleKey;

void setup() {
  size (1920/3, 1080/3);
}

void draw() {
  background(r, g, b);
  if (drawCircle) {
    circle(width/2, height/2, 30);
  }
}

void keyPressed() {

  //only react to Space Bar
  if (key== ' ') {
    r=random(255);
    g=random(255);
    b=random(255);
  } else {
    if (!drawCircle) {
      {
        circleKey=key;
      }
      drawCircle= true;
    }
  }
}

void keyReleased() {
  if (key== circleKey) {
    drawCircle=false;
  }
}
