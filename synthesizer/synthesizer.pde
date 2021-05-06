import processing.sound.*;

SinOsc sin;
float radius = 100;
Reverb reverb;

float[] buffer = new float[90];
float panning;


void setup() {
  size(400,400);
  background(0);
  
  reverb = new Reverb(this);
  
  sin = new SinOsc(this);
  sin.play();
}

void draw() {
 // background(0);
 // translate(width/2, height/2);
 
  
  for(int i = 0; i<buffer.length; i++) {
    float amplitude = map(mouseY, 0, height, 1.0, 0);
    sin.amp(amplitude);
   // println(amplitude);
    float a = map(amplitude, 0, 1, 0, height);
    
    
    float frequency = map(mouseX, 0, width, 20, 1000);
    sin.freq(frequency);
    float b = map(frequency, 20, 1000, 0, width);
    float c = map((a + b), 0, width, 0, 255);
     fill(c, 0, 255-c);
    if (mousePressed == true) {
      panning += .0001;
      println(panning);
    } else {
      panning = 0;
    }
   sin.pan(panning);
    background(0);
    beginShape();
    
//    vertex(30, a);
//vertex(85, 20);
//vertex(85, 75);
//vertex(30, 75);
  //rotate(panning *360);
    
    vertex(panning*50, 0);
    vertex(a, b);
    vertex(b,a);
    vertex(width-panning*50, height);
    endShape();
  }
  saveFrame("synth_1.jpg");

 // line(amplitude);
}


float targetX() {
  return radius * sin(radians(mouseX));
}

float y() {
  return radius * cos(radians(mouseY));
}
