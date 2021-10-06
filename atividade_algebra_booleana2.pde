int tam, pX, pY, x, y;
void setup() {
  size(600, 600);
  ellipseMode(CORNER);
  colorMode(HSB, 360, 100, 100);
  background(200, 100, 100);
  noStroke();
  tam = width / 10;
}

void draw() {
  if (keyPressed) {
    pX = int (random(0, 10));
    pY = int (random(0, 10));
    x = pX * tam;
    y = pY * tam;
    if (x == y)
      fill(120, 100, 100);
    else if (x + y == width - tam) 
      fill(60, 80, 100);
    else if (x+y == width || y - x == tam) 
      fill(360, 50, 100);
    else if (x + y == width - 2*tam || x - y == tam)
      fill(240, 50, 100);
    else
      fill(360, 0, 100);
    ellipse(x, y, tam, tam);
  }
}
