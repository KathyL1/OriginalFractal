public void setup(){
  size(1000,1000);
    background(256,206,200);
   
}
public void draw(){
  frameRate(10);
  myFractal(750,750,3490);
}
public void myFractal(int x, int y, int siz){
   fill((int)(Math.random()*600),(int)(Math.random()*600), (int)(Math.random()*600));
  ellipse(x,y,siz, siz);
  if(siz > 30){
  stroke((int)(Math.random()*6000),(int)(Math.random()*900), (int)(Math.random()*600));
    myFractal(x-siz/2, y, siz/2);
    myFractal(x+siz/2, y, siz/2);
    myFractal(x, y+siz/2, siz/2);
    myFractal(x, y-siz/2, siz/2);
  } 
}
