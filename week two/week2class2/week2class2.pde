int x,y; //variables for position
int h, s, b; //color variables

void setup(){
  size(800,400);
  
  //starting position at middle
  x = width/2;
  y = height/2;
  
}


void draw(){
  background(255);
  colorMode(HSB); //use hue sat bright color mode
  
  h = 0; //hue
  s = 360; // full sat
  b = 360; //full bright
  
  noStroke();
  fill(x,s,b); //hue = x causes position to change color
  ellipse (x,y,20,20);
  
  if (keyPressed){ //is a key pressed?
    if (key == CODED){ //is it special "CODED" key?
       if (keyCode == RIGHT){ //is coded key right arrow?
         x+=10; //same as x = x+10;
       }
       if (keyCode == LEFT){
         x--; //same as x = x-1;
       }
      }
    }
  
  if(x > width){ //if x goes out of bound on right
   x = 0; //reset to left
  }
    if(x < 0){ //if x goes out of bound on left
   x = width; //reset to right
  }
  
}
