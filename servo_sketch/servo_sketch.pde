// Controlling a servo position using a potentiometer (variable resistor) 
// by Michal Rinott <http://people.interaction-ivrea.it/m.rinott> 

#include <Servo.h> 
 
Servo myservo;  // create servo object to control a servo 
 
int potpin = 0;  // analog pin used to connect the potentiometer
int inByte = 0;

void setup() 
{ 
  Serial.begin(38400);
  myservo.attach(9);  // attaches the servo on pin 9 to the servo object 
} 
 
void loop() 
{ 
  if (Serial.available() > 0) {
    inByte = Serial.read();
    myservo.write(inByte);                  // sets the servo position according to the scaled value 
    Serial.print("rec: ");
    Serial.print(inByte, DEC);
    delay(10);                           // waits for the servo to get there 
  }
} 
