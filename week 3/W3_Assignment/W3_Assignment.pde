//ART 22 Spring 2020
//Assignment 3 - 04.19.20
//Author: Kristy Wong
//References: Week 2 & 3 Lecture Videos

float x0,y0,x1,y1; //colored lines variables
float i; //integer variable
float noisePosX0, noisePosY0, noisePosX1, noisePosY1; //noise position variables

void setup(){
  size(600,600); //size of screen
  background(0); //set bg color to black
  
 //initial noise positions
  noisePosX0 = 0; 
  noisePosY1 = 50;
  noisePosX0 = 10;
  noisePosY1 = 80;

  i = 100; //initial length of line value
  
}


void draw(){
  
  //white line x0/y0
  strokeWeight(10); //line size
  stroke(random(150,255),30); //random colors from light grey to white
  point(x0,y0); //emphasize beginning of line w/ a point 
  point(x0+i, y0+i); //emphasize end of line w/ point
  line(x0,y0,x0+i,y0+i); //white line position and length
  
  //purple line x1/y1
  strokeWeight(10); //line size
  stroke(random(0,255),50,random(0,255),30); //random purple color combos
  point(x1,y1); //emphasize beginning of line w/ point
  point(x1+i, y1+i); //emphasize end of line w/ point
  line(x1, y1,x1+i,y1+i); //purple line position and length
  
  //create sunbeam "eraser" 
  stroke(0, 50); //color of line w/ transparency of 50
  strokeWeight(2); //line size
  line(width/2,height/2,mouseX,mouseY); //line begins at center of screen and extends to wherever mouse position is
  
  //values for noise positions
  float m = noise(noisePosX0); //white line x noise position
  float n = noise(noisePosY0); //white line y noise position
  float o = noise(noisePosX1); //purple line x noise position
  float p = noise(noisePosY1); //purple line y noise position
  
  //change boundaries for noise
  x0 = map(m,0,1,0,width);   //change boundaries from 0-1 to 0-width for white line noise x position values
  y0 = map(n,0,1,0,height); //change boundaries from 0-1 to 0-height for white line noise y position values
  x1 = map(o,0,1,0,width); //change boundaries from 0-1 to 0-width for purple line noise x position values
  y1 = map(p,0,1,0,height); //change boundaries from 0-1 to 0-height for purple line noise y position values
 
//increase noise positions.. offset x and y to create symmetrical effect
  noisePosX0 = noisePosX0 + 0.005; //white line x noise positions can increase by 0.005 from previous position
  noisePosY0 = noisePosY0 + 0.01; //white line y noise positions can increase by 0.01 from previous position
  noisePosX1 = noisePosX1 + 0.01; //purpleline x noise positions can increase by 0.01 from previous position
  noisePosY1 = noisePosY1 + 0.005; //purple line y noise positions can increase by 0.005 from previous position
 
  //interaction
  if (keyPressed){ //if a key is pressed...
    if (key == CODED){ //...and the key is coded...
     if (keyCode == UP){ //and the coded key is up...
      i = i + random(0,10); //the length of both colored lines and end points will increase by a random number from 0-10
     }
    }
  }
  
    if (keyPressed){ //if a key is pressed...
    if (key == CODED){ //...and the key is coded ...
     if (keyCode == DOWN){ //and the coded key is down...
      i = i - random(0,10); //the length of both colored lines and end points will decrease by a random number from 0-10
     }
    }
  }

}
