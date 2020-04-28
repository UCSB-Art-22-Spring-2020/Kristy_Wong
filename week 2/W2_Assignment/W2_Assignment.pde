//ART 22 Spring 2020
//Week 2 Assignment

//Author: Kristy Wong
//Date: 04.13.2020
//References: processing.org for PShape

int x,y; //position variables

PImage room; //living room variable
PImage alien; //alien variable


void setup(){
  size(1000,608); //set size as background image size
  room = loadImage("room.jpeg"); //load room
  alien = loadImage("alien.png"); //load alien
  
  x = width/2; //initial x position of alien
  y = height/2; //intial y position of alien
}


void draw(){
  image(room,0,0, room.width, room.height); //display image onto loop
  for (int i = 0; i < 100; i++){ //create random texture
   noStroke(); //no outline
   fill(random(0,255), random (0,255), random (0,255), 80); //random colors
   rect (random (200,295), random (120, 170), random(10, 100), random (10, 100)); //position of random texture onto position of tv
  }
  
  image(alien, x, y, alien.width/3, alien.height/3); //load alien into loop, scaled down to 1/3rd
  if (keyPressed){ //if a key is pressed
    if (key == CODED){ //and the key is coded (the arrows)
      if (keyCode == RIGHT){ //if key is right arrow
        x++; //move right one pixel
      }
      if (keyCode == LEFT) { //if key is left arrow
        x--; //move left one pixel
      }
    }
  }
  
}
