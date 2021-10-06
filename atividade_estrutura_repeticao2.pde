int tam, x, y;

tam = 50;
x = width/tam;
y = height/tam;

size(600, 600);
colorMode(HSB, 360, 100, 100);
noStroke();
background(174, 36, 67);
fill(19,40,40);

for (int i=0; i<=x; i++) {
  for (int j=0; j<=y; j++) {
    if (i%2==0 && j%2==0)
      triangle(i*tam, j*tam, i*tam, j*tam+tam, i*tam+tam, j*tam+tam);
    if (i%2==1 & j%2==0)
      triangle(i*tam, j*tam, i*tam, j*tam+tam, i*tam+tam, j*tam);
   if (i%2==0 && j%2==1)
      triangle(i*tam, j*tam, i*tam, j*tam+tam, i*tam+tam, j*tam+tam);
   if (i%2==1 && j%2==1)
      triangle(i*tam, j*tam, i*tam+tam, j*tam, i*tam+tam, j*tam+tam);
  }
}
