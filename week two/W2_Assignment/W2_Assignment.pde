//ART 22 Spring 2020
//Week 2 Assignment

//Author: Kristy Wong
//Date: 04.13.2020
//References: processing.org for PShape

int x,y; //position variables

PImage room;
PImage alien;


void setup(){
  size(1000,608);
  room = loadImage("room.jpeg");
  alien = loadImage("alien.png");
  
  x = width/2;
  y = height/2;
}


void draw(){
  image(room,0,0, room.width, room.height);
  //colorMode(HSB);
  for (int i = 0; i < 100; i++){
   noStroke();
   fill(random(0,255), random (0,255), random (0,255), 80);
   rect (random (200,295), random (120, 170), random(10, 100), random (10, 100));
  }
  
  image(alien, x, y, alien.width/3, alien.height/3);
  if (keyPressed){
    if (key == CODED){
      if (keyCode == RIGHT){
        x++;
      }
      if (keyCode == LEFT) {
        x--;
      }
    }
  }
  
}
