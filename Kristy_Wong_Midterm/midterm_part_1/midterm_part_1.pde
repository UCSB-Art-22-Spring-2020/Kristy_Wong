//ART 22 Spring 2020
//Week 6 Midterm pt. 1
//Author: Kristy Wong

//References: Processing forum

float x,y;
float noisePosX, noisePosY;


void setup(){
  size(600,600);
  background(0);
  x = width/2;
  y = height/2;
  
  strokeWeight(10);
  stroke(255);

}


void draw(){
    point(x,y);

  float m = noise(noisePosX);
  float n = noise(noisePosY);
  
  x = map(m, 0, 1, 0, width);
  y = map(n, 0, 1, 0, height);
  
  noisePosX = noisePosX + 0.01;
  noisePosY = noisePosY + 0.01;
  
  if(x > width/2 && x < width){
   noisePosX = noisePosX + random(0.001, 0.1); 
 stroke(random(0,255),70);
  }
  
    if(y > height/2 && y < height){
   noisePosX = noisePosX + random(0.001, 0.1); 
   stroke(random(0,255),random(0,255), random(0,255),90);
  }
  
}
