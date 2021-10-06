int tam, x, y;
int matiz1, matiz2;
  
void setup() {  
  size(600,600);
  noStroke();
  background(255);
  colorMode(HSB, 360, 100, 100);
  tam = width/20;
}
void draw(){
  rect(x*tam, y*tam, tam, tam);      
}
  
void keyPressed() {
  if(keyPressed)
    x = int(random(0,20));                           
    y = int(random(0,20)); 
           
   if (x % 2 == 0 && y % 2 == 1 || y % 2 == 0 && x % 2 == 1) {
    fill(250, 80, 100);
} 
   else fill(70, 80, 100);
     rect(x*tam, y*tam, tam, tam);
}
  
