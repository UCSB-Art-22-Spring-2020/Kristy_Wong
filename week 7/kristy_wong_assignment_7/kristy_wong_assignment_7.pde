import peasy.*;
PeasyCam cam;
PShape icebox;
PImage img;
PShape star;


//create an array list to hold many particles
ArrayList<particle> plist = new ArrayList<particle>();

int boundary = 200;
int total = 500; //total number of particles

float rotX, rotY, rotZ, camX, camY, camZ; //rot and trans of nav

int colorR = 255;
int colorB = 0;

void setup(){
  size(600,600, P3D);
  cam = new PeasyCam(this,600);
  
  img = loadImage("earth.jpeg"); //load image to use as texture
  noStroke();
  icebox = createShape(SPHERE, 100);
  icebox.setTexture(img); //wrap icebox with img
  
  star = loadShape("star.obj"); 
  
  //we want to add total number of particles to our plist
  for (int i = 0; i < total; i++){
   plist.add(new particle (
   random(0,width), //initial x
   random(0,height), //initial y
   random(0,1000), //initial z
   10, //size
   random(-.5,.5), //x speed
   random(-.5,.5), //y speed
   random(-.5,.5) ) ); //z speed
  }
  
}


void draw(){
  background(0);
  colorR--;
  if(colorR<0){
    colorR = 255;
  }
  colorB++;
  if(colorB > 255){
   colorB = 0;
  }
  
ambientLight(colorR,100,colorB);

  
  scene(); //run scene fx
  nav();
  
  for(particle p : plist){//for every particle in the plist, 
    p.display(); //run its update() function
    
  }


}
