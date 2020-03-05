//import simalacion del teclado
#include <Keyboard.h>

//boton start
int start = 0;

//joystick 1
int up1 = 1;
int down1 = 2;
int R1 = 3;
int L1 = 4;
int buttonA1 = 5;
int buttonB1 = 6;

//joystick 2
int up2 = 7;
int down2 = 8;
int R2 = 9;
int L2 = 10;
int buttonA2 = 11;
int buttonB2 = 12;


void setup() {
  
  //inicia la comunicacion serial
  Serial.begin(9600);
  
  // definicion de pins Joystick 1
  pinMode(up1, INPUT);
  pinMode(down1, INPUT);
  pinMode(R1, INPUT);
  pinMode(L1, INPUT);
  pinMode(buttonA1, INPUT);
  pinMode(buttonB1, INPUT);
  
  // definicion de pins Joystick 2
  pinMode(up2, INPUT);
  pinMode(down2, INPUT);
  pinMode(R2, INPUT);
  pinMode(L2, INPUT);
  pinMode(buttonA2, INPUT);
  pinMode(buttonB2, INPUT);
  
  // definicion de pin start
  pinMode(start, INPUT);
}

void loop() {
  
  //condicional de start
  if(digitalRead(start) == LOW){
    Serial.println("start");
    Keyboard.write(13);// start = ENTER
  }
  
  //condicionales de joystick 1
  if(digitalRead(up1) == LOW){
    Serial.println("arriba");
     Keyboard.write(87); // up1 = w
  }
  if(digitalRead(down1) == LOW){
    Serial.println("abajo");
    Keyboard.write(83); //down1 = s
  }
  if(digitalRead(R1) == LOW){
    Serial.println("derecha");    
    Keyboard.write(68); // derecha_1 = d
  }
  if(digitalRead(L1) == LOW){
    Serial.println("izquierda");
    Keyboard.write(65); // izquierda_1 = a
  }
  if(digitalRead(buttonA1) == LOW){
    Serial.println("boton A");
    Keyboard.write(70); //boton A1 = f
  }
  if(digitalRead(buttonB1) == LOW){
    Serial.println("boton B");
    Keyboard.write(71); //boton b1 = g
  }
  
  
  //condicionales de joystick 2
  if(digitalRead(up2) == LOW){
    Serial.println("arriba");
    Keyboard.write(38); // up2 = flecha arriba
  }
  if(digitalRead(down2) == LOW){
    Serial.println("abajo");
    Keyboard.write(40); // down2 = flecha abajo
  }
  if(digitalRead(R2) == LOW){
    Serial.println("derecha");    
    Keyboard.write(39); // D2 = flecha derecha
  }
  if(digitalRead(L2) == LOW){
    Serial.println("izquierda");
    Keyboard.write(37); // L2 = flecha izquierda
  }
  if(digitalRead(buttonA2) == LOW){
    Serial.println("boton A");
    Keyboard.write(74); // boton A2 = j
  }
  if(digitalRead(buttonB2) == LOW){
    Serial.println("boton B");
    Keyboard.write(75); // boton B2 = k
  }
  


}
