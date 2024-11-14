void setup(){
fullScreen();
background(0);
}

void draw() {
  int x=mouseX/4+1;
  println(x);
  for(int i=height; i>0; i--){
    // lower % number mmeans more lines
    if(i%2==1){
      stroke(255);
    line(mouseX,mouseY,0,0);
    line(mouseX,mouseY,width,0);
    }
  }
}

void mousePressed(){
  background(0);
}
