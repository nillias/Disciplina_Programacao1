int t, x, y;

t = 25;
x = width/t;
y = height/t;

size(550, 550);
colorMode(HSB, 360, 100, 100);
noStroke();
background(224, 74, 58);
fill(44, 100, 91);

for (int i=0; i<=x; i++) {
  for (int j=0; j<=y; j++) {
    if (i%2==1 && j%2==1)
      triangle(i*t, j*t, i*t, j*t+t, i*t+t, j*t+t);
    if (i%2==0 & j%2==0)
      triangle(i*t, j*t, i*t, j*t+t, i*t+t, j*t);
  }
}
