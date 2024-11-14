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

void draw() {
  background(0);
  // Scale the mouseX value from 0 to 640 to a range between 0 and 175
  float c = map(val*10, 0, width, 0, 175);
  // Scale the mouseX value from 0 to 640 to a range between 40 and 300
  float d = map(val*10, 0, width, 40, 300);
  fill(255, c, 0);
  ellipse(width/2, height/2, d, d);   
  println(val);
  delay(10);
}

void serialEvent(Serial cPort){
  comPortString = cPort.readStringUntil('\n');
    if (comPortString!= null){
      comPortString = trim(comPortString);
    }
    val = int(comPortString);
}
