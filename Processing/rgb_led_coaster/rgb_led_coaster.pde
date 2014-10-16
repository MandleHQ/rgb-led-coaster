import processing.serial.*;

Serial myPort;

void setup(){
  PImage img = loadImage("color table.png");
  size(img.width, img.height);
  background(img);
  println(Serial.list());
  myPort = new Serial(this, Serial.list()[0], 9600);  
}

void draw(){}

void mouseDragged(){
  color c = get(mouseX, mouseY);
  myPort.write(int(red(c)) + " " + int(green(c)) + " " + int(blue(c)) + "\n");
}

