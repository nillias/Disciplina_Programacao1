void setup() {
  size(600, 600);
  noStroke();
  textSize(18);
}
int x, y;
int t;
int cor;
int pontos;
boolean gameOver= false;
void draw() {
  background(200);
  if (gameOver == false) { // (!gameOver)
    if (t>45) {
      t=0;
      x = int(random(50, 550));
      y = int(random(50, 550));
      cor = int(random(0, 2));
    }
    t++;
    if (cor ==1) fill(200, 100, 100);
    else fill(100, 100, 200);
    ellipse(x, y, 50, 50);
    fill(255);
    text(pontos, 300, 20);
  }else text("ACABOU!!", 260, 300); 
}
void mousePressed() {
  if (dist(mouseX, mouseY, x, y)<=25){
    if((cor == 0 && mouseButton == LEFT)||(cor == 1 && mouseButton == RIGHT))
    pontos++;
    else gameOver = true;
  }
  else gameOver = true;
}
