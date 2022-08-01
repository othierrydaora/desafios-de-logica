void setup() {
  Serial.begin(9600);
  pinMode(11, OUTPUT);
}

void loop() {
  int valorSensor = analogRead(A5);
  valorSensor = map(valorSensor, 0, 1023, 0, 255);
  analogWrite(11, valorSensor);
  Serial.print(valorSensor);
  Serial.print('\n');
  delay(1);
}
