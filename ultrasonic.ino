// SCUFFED DEVELOPMENT - v.0.5
// Initiates pins on Arduino to read trig and echo data
// CREATED/EDITTED in Arduino IDE

const int trig_pin = 9;
const int echo_pin = 10;

// Variables for duration and distance
long duration, distance;

// Sets up pins to take input and produce output
void setup() {
  pinMode(trig_pin, OUTPUT); 
  pinMode(echo_pin, INPUT);
  Serial.begin(9600);
}

// Loops forever
// Calculates the distance an object is from the sensor
// Prints distance to serial monitor
void loop() { 
  digitalWrite(trig_pin, LOW);
  delayMicroseconds(2);
  digitalWrite(trig_pin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trig_pin, LOW);

  // How long echo takes to echo off object and return to sensor
  duration = pulseIn(echo_pin, HIGH);

  // Distance = speed * time
  // The distance from an object is half the total distance
  distance = duration * 0.034 / 2;

  // distance in cm
  Serial.print("Distance: ");
  Serial.println(distance);
}
