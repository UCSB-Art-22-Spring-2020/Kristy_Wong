//ART 22 Spring 2020
//Final Project
//Author: Kristy Wong

PImage img;
float x, y;


//create an array list to hold many particles
PImage[] frames = new PImage[9];
int frameNum = 0;


void setup(){
  size(1200,500);
  background(0);
  
  for(int i =0; i < 9; i++){
    frames[i] = loadImage("frame_" + i + ".JPG");
    frames[i].resize(160, 200);
  }
 
  int a = 0;
  int b = 500;
  for(int i = 0; i < 20; i++){
    drawLeft(a, b, 255);
    a+=75;
    b-=25;
  }

  //position image
  for(int i = 0; i < 9; i++){
    image(frames[i], 50 + i*170, 280 + -i*60);

  }
  float x = random(width);
  float y = random(height);
  color c = frames[0].get(int (x), int(y));
  fill(c);
  
  int d = 5;
  int e = 250;
  for(int i = 0; i < 20; i++){
    drawTopAndRight(d, e, 255);
    d+=75;
    e-=25;
  }
}

void draw(){
  int s = second();
  int a = 0;
  int b = 500;
  
  if (s%2 == 1) { //alternating shades
    for(int i = 0; i < 20; i++){
      drawLeft(a, b, 255);
      a+=75;
      b-=25;
    }

  ////position image
    for(int i = 0; i < 9; i++){
      image(frames[i], 50 + i*170, 280 + -i*60);
      //float x = random(width); *tried to incorporate particles
      //float y = random(height);
      //color c = frames[i].get(int (x), int(y));
      //fill(c,2);
      //noStroke();
      //ellipse(x,y,16,16);
    }

  
    int d = 5;
    int e = 250;
    for(int i = 0; i < 20; i++){
      drawTopAndRight(d, e, 255);
      d+=75;
      e-=25;
    }
  }
  
  else {
  
  background(0);
  for(int i = 0; i < 20; i++){
      drawLeft(a, b, 155);
      a+=75;
      b-=25;
    }

  ////position image
    for(int i = 0; i < 9; i++){
      image(frames[i], 50 + i*170, 280 + -i*60);
      //float x = random(width);
      //float y = random(height);
      //color c = frames[i].get(int (x), int(y));
      //fill(c,2);
      //noStroke();
      //ellipse(x,y,16,16);
    }

  
    int d = 5;
    int e = 250;
    for(int i = 0; i < 20; i++){
      drawTopAndRight(d, e, 155);
      d+=75;
      e-=25;
    }
  }
}

//draw left Arch
void drawLeft(int x, int y, int shade){ 
  int tmpx = x;
  int tmpy = y; 
  
  //left diagonal
  for(int i = 0; i < 10; i++){
    strokeWeight(8);
    stroke(shade);
    point(tmpx,tmpy);
    tmpx+=1;
    tmpy-=25;
  }
}
   
//draw Top and Right Arch
void drawTopAndRight(int x, int y, int shade){ 
  int tmpx = x;
  int tmpy = y; 
  
   //top of arch
  for(int i = 0; i < 10; i++){
    strokeWeight(8);
    stroke(shade);
    point(tmpx,tmpy);
    tmpx+=25;
  }
  
  //right diagonal
  for(int i = 0; i < 10; i++){
    strokeWeight(8);
    stroke(shade);
    point(tmpx,tmpy);
    tmpx+=1;
    tmpy+=25;
  }
  
  
}
