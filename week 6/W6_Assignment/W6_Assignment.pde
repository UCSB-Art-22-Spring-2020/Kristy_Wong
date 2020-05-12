//ART 22 Spring 2020
//Week 6 Assignment
//Author: Kristy Wong

//References:

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


Minim minim; //initialize library
AudioPlayer song; //audio file
BeatDetect beat; //beat detector
FFT fft; //fast fourier transform - get info on "parts" (frequencies) of sound
float c;
float x,y; //position
float noisePosX, noisePosY;



void setup(){
  size(500,500);
  background(0);
  
  //setup sound library, load song file & loop
  minim = new Minim(this); 
  song = minim.loadFile("odesza.mp3", 1024);
  song.loop();
  
  //get info about song
 fft = new FFT (song.bufferSize(), song.sampleRate() );

x = width/2;
y= height/2;

noisePosX = 0;
noisePosY = 100;

}


void draw(){
  

  
//use fft to listen to song and get info about diff frequencies
fft.forward(song.mix);

for (int i=0; i < fft.specSize(); i++){
 stroke(random(0,255),random(0,20));
 strokeWeight(random(0,10));
 line(0,0,i,height - fft.getBand(i));
 line(width,0,i,height - fft.getBand(i));
  
 c = map(fft.getBand(150), 0, 50, 0, 360);
 fill(c,50);
 stroke(random(0,255),random(0,255),random(0,255));
  point(x,y);
 
 float m = noise(noisePosX);
 float n = noise(noisePosY);
 
 x = map(m,0,1,0,width);
 y = map(n,0,1,0,height);
 
 noisePosX = noisePosX + 0.01;
 noisePosY = noisePosY + 0.01;
}

}
