import processing.serial.*;
import cc.arduino.*;
import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;

Robot robot;

Arduino arduino;

int inPin1 = 1;
int inPin2 = 2;
int inPin3 = 3;
int inPin4 = 4;
int inPin5 = 5;
int inPin6 = 6;
int inPin7 = 7;
int inPin8 = 8;
int inPin9 = 9;
int inPin10 = 10;
int inPin11 = 11;
int inPin12 = 12;// pushbutton connected to digital pin 7
int dpadleft = 0;     // variable to store the read value
int dpadright = 0;  
int dpadup = 0;  
int dpaddown = 0;  
int buttony = 0;  
int buttonx = 0;  
int buttonb = 0;  
int buttona = 0;  
int leftshoulder = 0;  
int rightshoulder = 0;  
int select = 0;  
int start = 0;  
void setup()
{
  try { 
    robot = new Robot();
  } catch (AWTException e) {
    e.printStackTrace();
    exit();
  }
  println(Arduino.list());
  arduino = new Arduino(this, Arduino.list()[1], 57600);
  arduino.pinMode(inPin1, Arduino.INPUT);
  arduino.pinMode(inPin2, Arduino.INPUT);
  arduino.pinMode(inPin3, Arduino.INPUT);
  arduino.pinMode(inPin4, Arduino.INPUT);
  arduino.pinMode(inPin5, Arduino.INPUT);
  arduino.pinMode(inPin6, Arduino.INPUT);
  arduino.pinMode(inPin7, Arduino.INPUT);
  arduino.pinMode(inPin8, Arduino.INPUT);
  arduino.pinMode(inPin9, Arduino.INPUT);
  arduino.pinMode(inPin10, Arduino.INPUT);
  arduino.pinMode(inPin11, Arduino.INPUT);
  arduino.pinMode(inPin12, Arduino.INPUT);// sets the digital pin 7 as input
}

void loop()
{
  dpadleft = arduino.digitalRead(inPin1);
  dpadright = arduino.digitalRead(inPin2);
  dpadup = arduino.digitalRead(inPin3);
  dpaddown = arduino.digitalRead(inPin4);
  buttony = arduino.digitalRead(inPin5);
  buttonx = arduino.digitalRead(inPin6);
  buttonb = arduino.digitalRead(inPin7);
  buttona = arduino.digitalRead(inPin8);
  leftshoulder = arduino.digitalRead(inPin9);
  rightshoulder = arduino.digitalRead(inPin10);
  select = arduino.digitalRead(inPin11);
  start = arduino.digitalRead(inPin12);// read the input pin
  if (dpadleft == Arduino.LOW) {
     robot.keyPress(KeyEvent.VK_LEFT);
  }
  if (dpadleft == Arduino.HIGH) {
     robot.keyRelease(KeyEvent.VK_LEFT);
  }
  if (dpadright == Arduino.LOW) {
     robot.keyPress(KeyEvent.VK_RIGHT);
  }
  if (dpadright == Arduino.HIGH) {
     robot.keyRelease(KeyEvent.VK_RIGHT);
  }
  if (dpadup == Arduino.LOW) {
     robot.keyPress(KeyEvent.VK_UP);
  }
  if (dpadup == Arduino.HIGH) {
     robot.keyRelease(KeyEvent.VK_UP);
  }
  if (dpaddown == Arduino.LOW) {
     robot.keyPress(KeyEvent.VK_DOWN);
  }
  if (dpaddown == Arduino.HIGH) {
     robot.keyRelease(KeyEvent.VK_DOWN);
  }
  if (buttony == Arduino.LOW) {
     robot.keyPress(KeyEvent.VK_SHIFT);
  }
  if (buttony == Arduino.HIGH) {
     robot.keyRelease(KeyEvent.VK_SHIFT);
  }
  if (buttonx == Arduino.LOW) {
     robot.keyPress(KeyEvent.VK_HOME);
  }
  if (buttonx == Arduino.HIGH) {
     robot.keyRelease(KeyEvent.VK_HOME);
  }
  if (buttonb == Arduino.LOW) {
     robot.keyPress(KeyEvent.VK_ALT);
  }
  if (buttonb == Arduino.HIGH) {
     robot.keyRelease(KeyEvent.VK_ALT);
  }
  if (buttona == Arduino.LOW) {
     robot.keyPress(KeyEvent.VK_WINDOWS);
  }
  if (buttona == Arduino.HIGH) {
     robot.keyRelease(KeyEvent.VK_WINDOWS);
  }
  if (leftshoulder == Arduino.LOW) {
     robot.keyPress(KeyEvent.VK_Z);
  }
  if (leftshoulder == Arduino.HIGH) {
     robot.keyRelease(KeyEvent.VK_Z);
  }
  if (rightshoulder == Arduino.LOW) {
     robot.keyPress(KeyEvent.VK_X);
  }
  if (rightshoulder == Arduino.HIGH) {
     robot.keyRelease(KeyEvent.VK_X);
  }
  if (select == Arduino.LOW) {
     robot.keyPress(KeyEvent.VK_CONTROL);
  }
  if (select == Arduino.HIGH) {
     robot.keyRelease(KeyEvent.VK_CONTROL);
  }
  if (start == Arduino.LOW) {
     robot.keyPress(KeyEvent.VK_ENTER);
  }
  if (start == Arduino.HIGH) {
     robot.keyRelease(KeyEvent.VK_ENTER);
  }
  {
  }
}