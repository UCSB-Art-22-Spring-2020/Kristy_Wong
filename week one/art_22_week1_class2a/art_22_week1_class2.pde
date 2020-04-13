// Art22 Spring 20
//Week 1 Class 2
//Author: Kristy Wong

int x,y; // four integer variables
int w,h;

void setup(){
  size(600,600);
  
  x = width/2;
  y = height/2;
  
  w = 40;
  h = 40;
  
}

void draw(){
  //background(255); //white bg
  
  strokeWeight(4); //stroke outline, cap locks matter
  stroke(239,129,21,140); //red outline with some transparency (alpha channel)
  fill(0); //fill black
  ellipse(x,y,w,h); //draw ellipse
  
  strokeWeight(60);
  stroke(20,40,60,100);
  point(mouseX,mouseY);
  //println(mouseX,mouseY);
}
