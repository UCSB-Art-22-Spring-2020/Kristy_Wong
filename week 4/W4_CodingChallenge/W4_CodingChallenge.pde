//ART 22 Spring 2020
//Author: Kristy Wong
//April 27, 2020

//References: Processing Forum user jeremydouglass

int[] even = new int[20]; //new array with 20 elements of type "odd"
int[] odd = new int[20]; //new array with 20 elements of type "even"

void setup(){
  
  for(int i=0; i < even.length; even[i] = 2*i++){ //for loop: beginning "i" at 0; up to the number of elements in the array; multiply each number that increases by 2 for even numbers
  }
    for(int i=0; i < odd.length; odd[i] = 2*i++ +1){ //for loop: beginning "i" at 0; up to the number of elements in the array; multiply each number that increases by 2 and add 1 for odd numbers
  }
  
  println(even); //print "even" array to console
  printArray(odd); //print "odd" array to console
}


void draw(){
  
}
