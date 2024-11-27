//README
//1- draws lines from the corners of the screen to mouse position 
//2- draws cookie
//3- draws hatch lines
//4- eraser
// CTRL+ MOUSEWHEEL SETS BRUSH DENSITY ( works for all brushes)(left number)
//ALT + MOUSEWHEEL SETS SIZE( works for eraser)(right number in left corner)
// S saves screenshot
// SPACEBAR erases canvas


int state=0;
int frecventa=1;
int Size=10;

void setup() {
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
}

void drawLines() {
  stroke(0);
  line(width, height, mouseX, mouseY); //dreapta jos
  line(width, 0, mouseX, mouseY);//dreapta sus

  line(0, 0, mouseX, mouseY); // stanga sus
  line(0, height, mouseX, mouseY); //stanga jos
  line(0, 0, mouseX, mouseY); // stanga sus
  line(width, 0, mouseX, mouseY);//dreapta sus

  line(0, height, mouseX, mouseY); //stanga jos
  line(width, height, mouseX, mouseY); //dreapta jos
}

void drawCookie() {
  stroke(0);
  fill(153, 51, 51);
  circle(mouseX, mouseY, 50);
  fill(153, 102, 51);
  circle(mouseX-10, mouseY-10, 10);
  fill(153, 102, 51);
  circle(mouseX+10, mouseY+10, 10);
  fill(153, 102, 51);
  circle(mouseX-10, mouseY+15, 10);
  fill(153, 102, 51);
  circle(mouseX+13, mouseY-17, 10);
}

void drawHatches() {
  line(mouseX, mouseY, mouseX-Size, mouseY-Size);
}

void drawEraser() {
  fill(255, 255, 255);
  stroke(255);
  circle(mouseX, mouseY, Size);
}

void mouseDragged() {
  if (mouseX%frecventa==0 && mouseY%frecventa==0 && state==0) {
    drawLines();
  }
  if (mouseX%frecventa==0 && mouseY%frecventa==0 && state==1) {
    drawCookie();
  }
  if (mouseX%frecventa==0 && mouseY%frecventa==0 && state==2) {
    drawHatches();
  }

  if (mouseX%frecventa==0 && mouseY%frecventa==0 && state==3) {
    drawEraser();
  }
}

void keyPressed() {
  //Spacebar pt erase all
  if (keyCode==32) {
    background(255);
  }
  // Set 1,2,3,4 as brushes
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
  if (key =='s') {
    saveFrame();
  }
  println(state);
  println(keyCode);
}


void mouseWheel( MouseEvent event) {
  if (keyPressed== true && keyCode==17) {
    frecventa =frecventa+event.getCount();

    if (frecventa>7) {
      frecventa=7;
    }
    if (frecventa<1) {
      frecventa=1;
    }
  }

  if (keyPressed== true && keyCode==18) {
    Size= Size+event.getCount();
  }
  if (Size<1) {
    Size=1;
  }

  //println(event.getCount());
  //println(frecventa);
}
