import processing.serial.*;
import cc.arduino.*;
import controlP5.*;
ControlP5 controlP5;
Arduino arduino;
int servoAngle = 1;
void setup() {

 size(400,400);

 println(Arduino.list());
 arduino = new Arduino(this, Arduino.list()[1], 57600);

 for (int i = 0; i <= 13; i++)
 arduino.pinMode(i, Arduino.OUTPUT);

 controlP5 = new ControlP5(this);
 controlP5.addSlider("servoAngle",1,180,servoAngle,20,10,180,20);

}
void draw() {

         //arduino.analogWrite(9, servoAngle);
         
             arduino.analogWrite(10, servoAngle);
 //delay(15);
}