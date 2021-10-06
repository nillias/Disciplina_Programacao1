void setup() {
  size(500, 500);
  noStroke();
  background(0);
  rectMode(CENTER);
  for (int j=0; j<10; j++)
    for (int i=0; i<10; i++)
      desenho(i*50+25, j*50+25, 50);
      
}

void desenho(int x, int y, int l) {
  for (int i = 10; i>0; i--) {
  fill(i*30);
  stroke(255/i);
  ellipse(x, y, i*5, i*5);
  }
}
