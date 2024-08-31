int encodersensorPin = A0;   // pin de datos del sensor
int pinmotor = 9;           // entrada digital pwm
int pinmotor2 = 10;           // entrada que se va a 0
float sensorValue = 0.0;
float sensorIni = 0.0;
float Angle = 0.0;
float pwm_dutycycle = 0;
long previousMillis = 0;     // For main loop function
float voltage = 0.0;

void setup() {
  pinMode(pinmotor, OUTPUT);
  pinMode(encodersensorPin, INPUT);
  Serial.begin(115200);
}

void loop() {
  unsigned long currentMillis = millis();

  // Lee el valor del sensor
  sensorValue = analogRead(encodersensorPin);
  // Convierte la lectura analógica a grados (ajusta el offset si es necesario)
  Angle = -map(sensorValue, 0, 1023, 0, 360)+244;

  Serial.print("Ángulo: "); 
  Serial.println(Angle);

  voltage = pwm_dutycycle * (5.0 / 255.0);
  Serial.print("Voltaje: "); 
  Serial.println(voltage);

  Serial.print("PWM: "); 
  Serial.println(pwm_dutycycle);

  // Incrementa el ciclo de trabajo PWM cada segundo
  pwm_dutycycle = 30;
  analogWrite(pinmotor, pwm_dutycycle);

  // Si el ángulo es 0, mantiene el PWM por 5 segundos y luego lo apaga


  delay(300);
}
