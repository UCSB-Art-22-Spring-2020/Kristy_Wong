void nav(){
  if(keyPressed){
    if(key == CODED){
      
      if(keyCode == UP){
        rotX++; //increase X-axis rotation
    }
     if(keyCode == DOWN){
        rotX--; //decrease X-axis rotation
    }
    if(keyCode == LEFT){
        rotY++; //increase Y-axis rotation
    }
    if(keyCode == RIGHT){
        rotY--; //decrease Y-axis rotation
    }
   }
    
    if(key == 'w'){
        camZ+=10; //increase navigation z position by 10
    }
    if(key == 's'){
        camZ-=10; //decrease nav Z by 10
   }
  
  }
}
