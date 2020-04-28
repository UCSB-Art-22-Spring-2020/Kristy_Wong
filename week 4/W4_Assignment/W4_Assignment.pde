//ART 22 Spring 2020
//Author: Kristy Wong
//04.27.2020
//References: Processing Reference for tint

PImage img; //introduce PImage variable

void setup(){
  size(584,779);
  img = loadImage("sunset.png"); //load sunset image
  
  loadPixels();
  for (int x = 0; x < width; x++){ //nested loop to scan through all pixel locations
   for (int y = 0; y < height; y++){
     int index = x + y * width; //magic formula
  
  //extract color values from image
  float r = red(img.pixels[index]);
  float g = green(img.pixels[index]);
  float b = blue(img.pixels[index]);
  
  //set pixel color for display
  pixels[index] = color(r,g,b);
    }  
  }
  
  updatePixels();
}

void draw(){
  
   img = loadImage("sunset.png"); //load sunset image
  image(img,0,0);
  tint(random(150,255), 30); //add random transparency tint for lighting effect
  image(img,0,0);
  
  float x1 = random(0,width); //x location of copy
  float y1 = random(0,height); //y location of copy
  
  int w = width; //width of section
  int h = height; //height of section
  
  float x2 = x1 + random(-2,2); //paste pixel section at a random location up to 10 pixels away from x1
  float y2 = y1 + random(-2,2); //same for y
  
  copy( int(x1), int(y1), w, h, int(x2), int(y2), w, h);
}
