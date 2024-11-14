///README:/// //<>//

//This program draws lines from the corners of the screen to a chosen point//
// And then iterates an animation by drawing more lines to make patterns...//
//-...The point can be chosen via (Left)Mouse Click//

//The frequency of the lines can be adjusted in real time with the MouseWheel//
//-Mousewheel up decreases the frequency of drawn lines//
//-Mousewheel down increases the frequency of drawn lines//
//Lines can be stopped entirely by scrolling down too much...//
//...^This can be used to make cool patterns with more negative space//

// The amount of lines can be edited manually in code to change the animation..//
//...By changing the value of "frecventa" variable above void setup()//
// This can be used if you want to see the animation play out differently...//
//...But in a constant manner, without live interaction with the line frequency//

//-Spacebar takes a screenshot of the pattern and saves it in sketch folder//

// Delete // before lines marked as DEBUGGING PRINT to check values in console//

//ENJOY!//


int vert=0;
int oriz=0;
float frecventa=1.5; // lower numbers print more lines, higher numbers print less lines
int x, y;

void setup() {
  background(255);
  //size(1920/3, 1080/3);
  fullScreen();
  x=width/2;
  y=height/2;
}

void draw() {
  if (oriz<width) {
    oriz++;
    //print("Oriz:"); //DEBUGGING PRINT
    //println(oriz); //DEBUGGING PRINT
    if (oriz%frecventa==0) {
      line(width, height, x+ oriz, y); //dreapta jos
      line(width, 0, x+oriz, y);//dreapta sus

      line(0, 0, x-oriz, y); // stanga sus
      line(0, height, x-oriz, y); //stanga jos
    }
  }
  if (oriz==width) {
    oriz=0;
  }

  if (vert<height) {
    vert++;
    //print("Vert:");//DEBUGGING PRINT
    //println(vert); //DEBUGGING PRINT
    if (vert%frecventa==0) {
      line(0, 0, x, y-vert); // stanga sus
      line(width, 0, x, y-vert);//dreapta sus

      line(0, height, x, y+vert); //stanga jos
      line(width, height, x, y+vert); //dreapta jos
    }
  }
  if (vert==height) {
    vert=0;
  }
  println(frecventa); // DEBUGGING PRINT
  //print("X="); //DEBUGGING PRINT
  //println(x);  //DEBUGGING PRINT
  //print("Y="); //DEBUGGING PRINT
  //println(y);  //DEBUGGING PRINT
}
void mouseClicked() {
  background(255);
  x=mouseX;
  oriz=0;
  //print("X="); //DEBUGGING PRINT
  //println(x); //DEBUGGING PRINT
  y=mouseY;
  vert=0;
  //print("Y="); //DEBUGGING PRINT
  //println(y); //DEBUGGING PRINT
}


///Press SpaceBar to save Snapshot to sketch folder///
void keyPressed() {
  if (key == ' ') {
    saveFrame("Pattern-######.png");
  }
}


/// Mousewheel UP to draw less lines, Mousewheel Down to draw more lines///
void mouseWheel(MouseEvent event) {
  float e= event.getCount();
  //println(e);

  if (e==-1) {
    frecventa++;
  } else {
    frecventa--;
    if (frecventa<=0) {
      frecventa=0;
    }
  }
}
