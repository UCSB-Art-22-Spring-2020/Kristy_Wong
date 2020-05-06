human Kristy; //class human named Kristy
human Paul;

particle p; //initialize particle named p
particle q;
particle challenge;

void setup(){
  size(600,600);
  
  Kristy = new human("Kristy", 22, 0); //use constructor to set info about this human
  Paul = new human("Paul", 15, 2); 
  
  p = new particle(width/2, height/2, 10, 2, 1);
  q = new particle(random(0,width), random(0,height),10, -2, -1);
  challenge = new particle(width/2, height/2, 5, -1, 1);
}


void draw(){
  background(0);
  //Kristy.display();
  //Paul.display();
  
  p.display();
  q.display();
  challenge.display();
}

void mouseReleased(){
  Kristy.age++; //increase age every mouse click
  Paul.coffee+=5; //increase coffee by 5 every mouseclick
  
  q.size+=5;
  challenge.size+=random(0,5);
}
