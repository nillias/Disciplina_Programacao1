int [][] M = new int[10][8];
int s, t;
float x;
boolean inicio = true;
boolean acertou = true;

void setup() {
  background(150);
  size(800, 720);
  noStroke();
  x = 0;
  desenho();
}

void losango(int x, int y, int l) {
  quad(x-l/2, y, x, y-l/2, x+l/2, y, x, y+l/2);
}


void desenho() {

  for (int i=0; i<1; i++) {
    int n = (int) random(10);
    int m = (int) random(8);
    M[n][m] = 1;
  } 



  for (int i=0; i<10; i++)
    for (int j=0; j<8; j++) {

      if (M[i][j] == 1) {
        fill(255);
        losango(i*80+40, j*80+40, 72);
      } else {
        fill(255);
        losango(i*80+40, j*80+40, 80);
      }
    }

  for (int i=0; i<10; i++) {
    for (int j=0; j<8; j++) {
      print(M[i][j], "");
    }
    println("");
  }
}

void draw() {
  fill(255);
  textSize(20);
  text("Encontre o desenho diferente", 270, 670);

  //cronometro de 10segundos//
  if (inicio) {
    x = x + 1.3;
    fill(255);
    rect(0, 710, x, 100);
  }

  if (x > 800) {
    x = 0;

    fill(255);
    text("VOCÊ PERDEU", 340, height/2+340);
  }
} 

void mousePressed() {
  int i = mouseX/80;
  int j = mouseY/80;

  if (M[i][j] == 1) {
    inicio = false; 
    ;
  }
  if (M[i][j] == 1) {
    fill(150);
    rect(0, 690, 800, 200);
    fill(30);
    text("VOCÊ ACHOU!!!!!", 340, height/2+340);

    println("");
    println("Acertou!"); 
    print("Posição do Clique: ");
    print(mouseX, mouseY, " => ");
    print(mouseX/80, mouseY/80);
  } else {
    fill(255);
    textSize(20);
    text("ERROU!", 650, height/2+330);

    println("");
    println("Errou!"); 
    print("Posição do Clique: ");
    print(mouseX, mouseY, " => ");
    print(mouseX/80, mouseY/80);
  }
}
