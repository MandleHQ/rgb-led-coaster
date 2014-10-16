void setup(){
  Serial.begin(9600);  
}

void loop(){}

void serialEvent(){
  int r = Serial.parseInt();
  int g = Serial.parseInt();
  int b = Serial.parseInt();
  
  if(Serial.read() == '\n'){
    analogWrite(11, r);
    analogWrite(10, g);
    analogWrite(9, b);
  }
}
