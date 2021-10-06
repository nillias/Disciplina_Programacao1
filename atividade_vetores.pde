void setup () {
  size(600,600);
  int [] cor1 = {255, 200, 90};
  int [] cor2 = completCor(cor1);
  fill (cor1[0], cor1[1], cor1[2]);
  ellipse(200, 300, 50,50);
  fill (cor2[0], cor2[1], cor2[2]);
  ellipse(400,300, 50,50);
}

int [] completCor(int [] cor) {
  int r = 255 - cor[0];
  int g = 255 - cor[1];
  int b = 255 - cor[2];
  int [] res = {r,g,b};
  return res;
 
}
