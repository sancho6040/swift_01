
int up = 2;
int down = 3;
int r = 4;
int l = 5;
int start = 6;
int buttonA = 7;
int buttonB = 8;

int tempU;
int tempD;
int tempR;
int tempL;
int tempS;
int tempA;
int tempB;

void setup() {
  //cofiguracion inicial
  //pinMode(led, OUTPUT);
  Serial.begin(9600);
  
  pinMode(up, INPUT);
  pinMode(down, INPUT);
  pinMode(r, INPUT);
  pinMode(l, INPUT);
  pinMode(start, INPUT);
  pinMode(buttonA, INPUT);
  pinMode(buttonB, INPUT);
}

void loop() {
  //bucle
  tempU = digitalRead(up);
  tempD = digitalRead(down);
  tempR = digitalRead(r);
  tempL = digitalRead(l);
  tempS = digitalRead(start);
  tempA = digitalRead(buttonA);
  tempB = digitalRead(buttonB);
  
  if(tempU == HIGH){
    Serial.println("arriba");
  }if(tempD == HIGH){
    Serial.println("abajo");
  }if(tempR == HIGH){
    Serial.println("derecha");    
  }if(tempL == HIGH){
    Serial.println("izquierda");
  }if(tempS == HIGH){
    Serial.println("start");
  }if(tempA == HIGH){
    Serial.println("boton A");
  }if(tempB == HIGH){
    Serial.println("boton B");
  }


}
