int vert=0;
int oriz=0;
float frecventa=1.5;
int x;
int y;

void setup() {
  background(255);
  size(1920/3, 1080/3);
  //fullScreen();
}

void draw() {
  if (oriz<width) {
    oriz++;
    if (oriz%frecventa==0) {
      line(width, height, width/2+ oriz, height/2); //dreapta jos
      line(width, 0, width/2+oriz, height/2);//dreapta sus

      line(0, 0, width/2-oriz, height/2); // stanga sus
      line(0, height, width/2-oriz, height/2); //stanga jos
    }
  }
  if (oriz==width/2) {
    oriz=0;
  }

  if (vert<height) {
    vert++;
    if (vert%frecventa==0) {
      line(0, 0, width/2, height/2-vert); // stanga sus
      line(width, 0, width/2, height/2-vert);//dreapta sus

      line(0, height, width/2, height/2+vert); //stanga jos
      line(width, height, width/2, height/2+vert); //dreapta jos
    }
    if (vert==height/2) {
      vert=0;
    }
  }
}
void mouseClicked() {
  background(255);
  int x=pmouseX;
  int y=pmouseY;
}
