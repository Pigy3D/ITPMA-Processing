int sus=height/2;
int jos=height/2;
int stanga=width/2;
int dreapta=width/2;
float frecventa=1.5;

//line(0, 0, width/2, height/2); // stanga sus
//line(0, height, width/2, height/2); //stanga jos
//line(width, 0, width/2, height/2);//dreapta sus
//line(width, height, width/2, height/2); //dreapta jos

void setup() {
  background(255);
  size(1920/3, 1080/3);
  //fullScreen();
}

void draw() {
  ///linii sus///
  if (sus>0) {
    sus--;
    if (sus%frecventa==0) {
      line(0, 0, width/2, sus); // stanga sus
      line(width, 0, width/2, sus);//dreapta sus
    }
  } else {
    if (sus==0) {
      sus=height/2;
    }
  }

  ///linii jos///
  if (jos<height) {
    //println(jos);
    jos++;
    if (jos%frecventa==0) {
      line(width, height, width/2, jos);//dreapta jos
      line(0, height, width/2, jos);//stanga jos
    }
  } else {
    if (jos==height) {
      jos=height/2;
    }
  }
  ///linii stanga///
  if (stanga>0) {
    stanga--;
    if (stanga%frecventa==0) {
      line(0, 0, stanga, height/2); // stanga sus
      line(0, height, stanga, height/2); //stanga jos
    }
  } else {
    if (stanga==0) {
      stanga=width/2;
    }
  }
  ///linii dreapta///
  if (dreapta<width) {
    dreapta++;
    if (dreapta%frecventa==0) {
      line(width, height, dreapta, height/2); //dreapta jos
      line(width, 0, dreapta, height/2);//dreapta sus
    }
  } else {
    if (dreapta==width) {
      dreapta=width/2;
    }
  }
}

void mouseClicked() {
  background(255);
  //line(0, 0, mouseX, mouseY); // stanga sus
  //line(0, height, mouseX, mouseY); //stanga jos
  //line(width, 0, mouseX, mouseY);//dreapta sus
  //line(width, height, mouseX, mouseY); //dreapta jos
}
