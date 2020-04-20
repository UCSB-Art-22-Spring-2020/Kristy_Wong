  void update(){
  
  //xPos+=(xVel*xDirection); //move by x velocity in the current direction.. same as xPos = xPos + xVel = x++
 xVel = xVel * xDirection; //make sure xVel is in correct direction (left/right)
   xPos+=xVel; //add xVel to x position
   xVel+=xGravity; //add gravity to velocity 
 
 
   //yPos+=(yVel*yDirection);
   yVel = yVel * yDirection; //make sure yVel is in correct direction (up/down)
   yPos+=yVel; //add yVel to y position
   yVel+=yGravity; //add gravity to velocity
   
  }
