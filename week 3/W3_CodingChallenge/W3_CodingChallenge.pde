
float xPos, yPos; //position variables for geometry
float xVel, yVel; //velocity variables
float xDirection, yDirection; //direction variables
float xGravity, yGravity; //acceleration variables

void setup (){
   size(600,600);
  init();
  
}


void draw (){
 
  render(); //run "render" function
  
  update(); //run/call "update" function
   
  boundaries(); //run "boundaries" function
  
 interaction(); //run "interaction" function
  
}
