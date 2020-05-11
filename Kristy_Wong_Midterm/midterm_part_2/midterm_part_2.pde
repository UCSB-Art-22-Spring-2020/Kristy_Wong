//ART 22 Spring 2020
//Week 6 Midterm pt. 2
//Author: Kristy Wong

//References: Processing forum
 
 
 float[] floats = new float [40]; 
 
 void setup(){
  
  floats[0] = 7;
  floats[37] = 9;
  printArray(floats);

for (int i=0; i < floats.length; i++){
  floats[i] = int(random(1,100));
}
printArray(floats);
 println(floats[9]);
  
 }
