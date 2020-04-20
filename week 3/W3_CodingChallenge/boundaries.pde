void boundaries (){
  
    if (xPos > width|| xPos < 0){ //check if at edge of window
    xDirection = xDirection * -1; //change direction to other sign
  }
  
    if (yPos > height|| yPos < 0){ //check if at top/bottom of window
    yDirection = yDirection * -1; //change direction to other sign
  }
  
  //if (xPos > width){
  //  xPos = 0;
  //}
  //if (xPos<0){
  //  xPos = width;
  //}
  
  //  if (yPos > height){
  //  yPos = 0;
  //}
  //if (yPos<0){
  //  yPos = height;
  //}
  
}
