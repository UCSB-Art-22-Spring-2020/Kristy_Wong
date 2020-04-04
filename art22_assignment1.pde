//ART 22 Assignment 1
//Date: April 2, 2020
//Author: Kristy Wong
//References: processing.org Pshape tutorial


//ingredients
 int number; //create an integer variable named "number"
 
 
//set up ingredients
void setup(){
  size(1000,800); //size of window
  number = 1000; //set number to bottom

}


//do actions
void draw(){
  
  background(235,255,253); //color of window

 PShape plane = createShape(GROUP); //custom shape group
 PShape body = createShape(ELLIPSE, 0, 0, 260, 100); //body shape of plane
 PShape tail1 = createShape(TRIANGLE, 0,0,150,60,120,0 ); //bottom tail
 PShape tail2 = createShape(TRIANGLE, 0,0,150,-60,120,0); //top tail
 PShape frontwing = createShape (QUAD, -5,20,40,10,100,80,80,100); //front wing
 PShape wing2 = createShape (QUAD, -20,0,20,-100,60,-120,20,0); //back wing
 plane.addChild(wing2);
 plane.addChild(tail2);
 plane.addChild(tail1);
 plane.addChild(body);
 plane.addChild(frontwing);
 translate(number,mouseY); //plane location
 shape(plane);
 fill(150); //add grey color to plane
 stroke(180); //slight outline to plane shapes
 number = number - 2; //make plan move to the left 2 pixels every loop
 
 if (mouseX < width/2 && mouseY < height/2){ //when mouse is in top left quadrant
   fill(65,90,170,70); //change color to blue w/ slight transparency
 } else{
   fill (150); //when mouse not in top left quadrant, fill with grey
 }
 
  
}
