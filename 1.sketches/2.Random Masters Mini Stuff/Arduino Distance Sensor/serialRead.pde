/**
 * Read int data from the serial port (connected to Arduino etc).
 * 
 * 1) detect presence
 * 2) threshold
 * 3) gesture
 */


import processing.serial.*;

Serial myPort;  // Create object from Serial class
String comPortString; // Lines of text read from the serial port
int val;      // Numbers received from the serial port

void setup() 
{
  size(400, 400);
  printArray(Serial.list());
  String portName = Serial.list()[2];
  myPort = new Serial(this, portName, 115200);
  myPort.bufferUntil('\n');
  textSize(128);
  fill(0);
}

void draw()
{
  background(255);
  //text(val, 40, 120);
  //println(val);
  int xVal = val*100;
 int yVal = mouseY*3-100;
 if(yVal<50){
   background(val,190,100);
 }
 curve(xVal, yVal, 100, 100, 100, 300, xVal, yVal);
 curve(xVal, yVal, 100, 300, 300, 300, xVal, yVal);
 curve(xVal, yVal, 300, 300, 300, 100, xVal, yVal);
 curve(xVal, yVal, 300, 100, 100, 100, xVal, yVal);

}

void serialEvent(Serial cPort){
  comPortString = cPort.readStringUntil('\n');
    if (comPortString!= null){
      comPortString = trim(comPortString);
    }
    val = int(comPortString);
}
