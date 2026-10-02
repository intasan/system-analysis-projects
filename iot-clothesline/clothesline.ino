const int rainSensor = A0;
const int motorIn = 8;
const int motorOut = 9;
const int threshold = 500;

void setup() {
  pinMode(motorIn, OUTPUT);
  pinMode(motorOut, OUTPUT);
  Serial.begin(9600);
}

void stopMotor() {
  digitalWrite(motorIn, LOW);
  digitalWrite(motorOut, LOW);
}

void loop() {
  const int value = analogRead(rainSensor);
  Serial.println(value);

  if (value < threshold) {
    // Rain detected: retract clothesline.
    digitalWrite(motorIn, HIGH);
    digitalWrite(motorOut, LOW);
    delay(1500);
    stopMotor();
  } else {
    stopMotor();
  }
  delay(1000);
}
