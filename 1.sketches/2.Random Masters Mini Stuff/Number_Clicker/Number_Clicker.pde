//0: cookie at(mouseX, mouseY)
//1: 2 circles, (mouseX, mouseY) (pmouseX, pmouseY)

int x=1;
int[] mx = {0, 0, 0, 0, 0};
int[] my={0, 0, 0, 0, 0};

void setup() {
  size(1920/3, 1080/3);
  background(255);
  frameRate(144);
}

void draw() {
  background(255);
  textSize(128);
  fill(0);
  text("Cookies:", 10, 120);
  text(x, 520, 120);

  if (x==1) {
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

  if (x==2) {
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
    // Second cookie///////////////////////////////////
    fill(255, 204, 102);
    circle(pmouseX, pmouseY, 50);
    fill(153, 102, 51);
    circle(pmouseX-10, pmouseY-10, 10);
    fill(153, 102, 51);
    circle(pmouseX+10, pmouseY+10, 10);
    fill(153, 102, 51);
    circle(pmouseX-10, pmouseY+15, 10);
    fill(153, 102, 51);
    circle(pmouseX+13, pmouseY-17, 10);
  }

  if (x==3) {
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
    // Second cookie///////////////////////////////////
    fill(255, 204, 102);
    circle(pmouseX, pmouseY, 50);
    fill(153, 102, 51);
    circle(pmouseX-10, pmouseY-10, 10);
    fill(153, 102, 51);
    circle(pmouseX+10, pmouseY+10, 10);
    fill(153, 102, 51);
    circle(pmouseX-10, pmouseY+15, 10);
    fill(153, 102, 51);
    circle(pmouseX+13, pmouseY-17, 10);
    //Third Cookie/////////////////////////////////////
    fill(153, 153, 102);
    circle((mouseX+pmouseX)/2, (mouseY+pmouseY)/2, 50);
    fill(204, 51, 153);
    circle((mouseX+pmouseX)/2-10, (mouseY+pmouseY)/2-10, 10);
    fill(204, 51, 153);
    circle((mouseX+pmouseX)/2+10, (mouseY+pmouseY)/2+10, 10);
    fill(204, 51, 153);
    circle((mouseX+pmouseX)/2-10, (mouseY+pmouseY)/2+15, 10);
    fill(204, 51, 153);
    circle((mouseX+pmouseX)/2+13, (mouseY+pmouseY)/2-17, 10);
  }

  if (x==4) {
    for (int index=mx.length-1; index>0; index--) {
      //shift to the right//

      mx[index]=mx[index-1];
      my[index]=my[index-1];
    }
    mx[0]=mouseX;
    my[0]=mouseY;
    for (int i=0; i<mx.length; i++) {
      fill(10, 130, i*40, 100);
      circle(mx[i], my[i], i*3+4);
    }
  }
}
void mouseClicked() {
  x++;
  if (x==5) {
    x=1;
  }
  background(255);
}
