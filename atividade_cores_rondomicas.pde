int x2, y2, x4, y4;
float matiz1, matiz2;

void setup(){
  size(800, 800);
  x2 = width/2;
  y2 = height/2;
  x4 = width/4;
  y4 = height/4;
  colorMode(HSB, 360, 100, 100);
  noStroke();
 
}
void draw() {
  background(matiz2, 80, 95);
  fill(matiz1, 35, 75);
  quad(x2, 0, 0, y2, x2, height, width, y2);
  fill(matiz2, 80, 95);
  rect(x4, y4, x2, y2);
}
void mousePressed() {
  matiz1 = random(0, 360);
  matiz2 = matiz1+180;
  if(matiz2>360)
     matiz2 = matiz2 -360;
}
