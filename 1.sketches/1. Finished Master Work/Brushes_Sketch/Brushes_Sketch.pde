//README
//NO AI OR OTHER SIMILAR HELP WAS USED IN THE MAKING OF THIS PROJECT
//1- draws lines from the corners of the screen to mouse position
//2- draws concentric circles
//3- draws hatch lines
//4- draws vertical lines
//5- draws horizontal lines
//6- eraser
// A AND D SETS BRUSH DENSITY ( works for all brushes except 1)(left number)
//Q AND E  SETS SIZE (right number)
// S saves screenshot
// SPACEBAR erases canvas

float r, g, b;
boolean blackandwhite=true;
int state=0;
int frecventa=1;
int Size=1;

void setup() {
  frameRate(140);
  background(255);
  size(1920/3, 1080/3);
  //fullScreen();
}

void draw() {
  fill(177);
  stroke(177);
  rect(0, 0, 100, 40);
  textSize(35);
  fill(153, 153, 102);
  text(frecventa, 15, 25);
  fill(153, 153, 102);
  text(Size, 50, 25);

  if (blackandwhite==false) {
    r=random(0, 255);
    g=random(0, 255);
    b=random(0, 255);
    r++;
    if (r==255) {
      r=random(0, 255);
    }
    g++;
    if (g==255) {
      g=random(0, 255);
    }
    b++;
    if (b==255) {
      b=random(0, 255);
    }
  } else {
    r=0;
    g=0;
    b=0;
  }
}

void drawLines() {
  stroke(r, g, b);
  line(width, height, mouseX, mouseY); //dreapta jos
  line(width, 0, mouseX, mouseY);//dreapta sus
  line(0, 0, mouseX, mouseY); // stanga sus
  line(0, height, mouseX, mouseY); //stanga jos
  line(0, 0, mouseX, mouseY); // stanga sus
  line(width, 0, mouseX, mouseY);//dreapta sus

  line(0, height, mouseX, mouseY); //stanga jos
  line(width, height, mouseX, mouseY); //dreapta jos
}

void drawCircles() {
  stroke(r, g, b);
  noFill();
  circle(mouseX, mouseY, 50*Size);
  circle(mouseX, mouseY, 40*Size);
  circle(mouseX, mouseY, 30*Size);
  circle(mouseX, mouseY, 20*Size);
  circle(mouseX, mouseY, 10*Size);
}

void drawHatches() {
  stroke(r, g, b);
  line(mouseX, mouseY, mouseX-Size, mouseY-Size);
}

void drawVertlines() {
  stroke(r, g, b);
  line(mouseX, height, mouseX, mouseY);
}

void drawHorizlines() {
  stroke(r, g, b);
  line(0, mouseY, mouseX, mouseY);
}


void drawEraser() {
  fill(255, 255, 255);
  stroke(255);
  circle(mouseX, mouseY, Size);
}

void mouseDragged() {
  if ((mouseX+ mouseY)%frecventa==0 && state==0) {
    drawLines();
  }
  if ((mouseX+ mouseY)%frecventa==0 && state==1) {
    drawCircles();
  }
  if ((mouseX+ mouseY)%frecventa==0 && state==2) {
    drawHatches();
  }

  if ((mouseX+ mouseY)%frecventa==0 && state==3) {
    drawVertlines();
  }
  if ((mouseX+mouseY)%frecventa==0 && state==4) {
    drawHorizlines();
  }

  if ((mouseX+ mouseY)%frecventa==0 && state==5) {
    drawEraser();
  }
}

void keyPressed() {
  //Spacebar pt erase all
  if (keyCode==32) {
    background(255);
  }
  // Set 1,2,3,4,5,6 as brushes
  if (key== '1') {
    state=0;
  }
  if (key== '2') {
    state=1;
  }
  if (key== '3') {
    state=2;
  }
  if (key== '4') {
    state=3;
  }
  if (key=='5') {
    state=4;
  }
  if (key=='6') {
    state=5;
  }
  if (key =='s') {
    saveFrame();
  }
  if (key=='q') {
    Size--;
  }
  if (Size<1) {
    Size=1;
  }
  if (key=='e') {
    Size++;
  }
  if (Size>100) {
    Size=100;
  }

  if (key=='a') {
    frecventa--;
  }
  if (key=='z') {
    blackandwhite=true;
  }
  if (key=='c') {
    blackandwhite=false;
  }
  if (frecventa<1) {
    frecventa=1;
  }
  if (key=='d') {
    frecventa++;
  }
  if (frecventa>10) {
    frecventa=10;
  }
  println(state);
  println(keyCode);
}
