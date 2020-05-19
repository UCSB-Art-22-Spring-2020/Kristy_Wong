//ART 22 Spring 2020
//Week 7 Coding Challenge
////Author: Kristy Wong

import peasy.*;
PeasyCam cam; //initialize camera object
float x, y, z; 

void setup(){
  size(600,600,P3D);
    lights();
  cam = new PeasyCam(this, 600);
}


void draw(){
  background(255);

  
  float rotX = map(mouseX, 0, width, 0, TWO_PI); //map mouse from 0-width to 0-360 degrees
  float rotY = map(mouseY, 0, height, 0, TWO_PI); //same for Y

  stroke(0);
  fill(175);
  
 noFill();
 box(100);
 sphere(150);

 pushMatrix();
  translate(x,y,z);
  fill(random(0,255), random(0,255), random(0,255));
  sphere(20);
 popMatrix();
   z++;
   
 pushMatrix();
  translate(x,y,z);
  fill(random(0,255), random(0,255), random(0,255));
  box(20);
 popMatrix();
  z++;
  
}

 
