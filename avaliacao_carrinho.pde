boolean going = true;
boolean red = true;
boolean yellow = false;
boolean green = true;

int x, x2, x3, y2, y3;
int s, t;

void setup() {
  size(600, 600);
  x2 = width/2;
  x3 = width/3;
  y2 = height/2;
  y3 = height/3;
  s = millis()/1000;
  
  noStroke();
  background(125);
  colorMode(HSB, 360, 100, 100);
}

void draw() {

  //grama//
  fill(142, 100, 72);
  rect(0, 0, x2*2, y2);

  //areia//
  fill(45, 40, 100);
  rect(0, y2, x2*2, y2);
  //mar//
  fill(168, 98, 95);
  rect(0, y3*3-50, x2*2, 50);
  fill(176, 0, 100, 100);
  rect(0, y3*3-54, x2*2, 9);

  //barraca1//
  fill(285, 66, 65);
  circle(x3-100, y3*2+90, 50);
  fill(0, 0, 100);
  circle(x3-100, y3*2+90, 30);
  fill(285, 66, 65);
  circle(x3-100, y3*2+90, 15);
  //barraca2//
  fill(285, 66, 65);
  circle(x3*2, y3*2+50, 50);
  fill(0, 0, 100);
  circle(x3*2, y3*2+50, 30);
  fill(285, 66, 65);
  circle(x3*2, y3*2+50, 15);

  //estrada horizontal//
  fill(0, 0, 20);
  rect(0, y2-50, x2*2, 100);
  //faixa1//
  fill(0, 0, 100);
  rect(x3*2, y2-50, 7, 100);
  //estrada vertical//
  fill(0, 0, 20);
  rect(x2+120,0, 100, 250);
  fill(0, 0, 100);
  rect(x2+120, y3+30, 100, 7);

  //carro//
  fill(45, 78, 96);
  rect(x, y2, 70, 30, 4, 15, 15, 4);

  //carro anda//
  if (going) {
    x = x + 2;
  }
  
  //para na faixa//
  if (x > 330 && x < 340 && red) {
    red = true;
    going = false;
  } 
  if (green) {
    red = false;
    going = true;
  }

  //reinicia o ciclo do carro//
  if (x > 600) {
    x = -70;
  }

  //semaforo//
  fill(0, 0, 10);
  rect(x2, y3/4, 60, 132, 40);
  
  //luz vermelha apagada//
  fill(0, 100, 40);
  //luz vermelha acesa
  if (red) {
    fill(0, 100, 96);
  }
  circle(x2+30, y3-124, 25);

  //luz verde apagada//
  fill(140, 100, 40);
  //luz verde acesa//
  if (green) {
    fill(140, 100, 96);
  }
  circle(x2+30, y3-46, 25);

  //semaforo automatico//
  if ( frameCount % 300 == 0 ) {
    red = !red;
  }
 
  if ( frameCount % 300 == 0) {
    green = !green;
  }
  

  //contador//
  t = millis()/1000 - s;
  if (t > 4) {
    s = millis()/1000;
  } 
  
  
  
       
  fill(50, 100, 100);
  textSize(20);
  textAlign (CENTER);
  text(t, x2+30, y3-80);

}

void mousePressed() {
  //Se aluz vermelha estiver acesa, verde apaga//
  if (red) {
    red = !red;
    green = !green;
  } else {
    red = !red;
   green = !green;
  }
  
  if (t > 0) {
   s = millis()/1000;
  }
}

//Professor eu tive muita dificuldade pra fazer a parametrização, 
//ainda é muito confuso na minha cabeça. Não consegui parametrizar todos 
//os objetos, principalemnte os que estão em movimento.

//Nillia Sousa da Silva
//499957
