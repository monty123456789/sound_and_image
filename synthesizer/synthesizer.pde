import processing.sound.*;

SinOsc sin;
float radius = 100;
Reverb reverb;

float[] buffer = new float[90];

void setup() {
  size(400,400);
  background(0);
  
  reverb = new Reverb(this);
  
  sin = new SinOsc(this);
  sin.play();
}

void draw() {
 // background(0);
  translate(width/2, height/2);
  stroke(255);
  
  for(int i = 0; i<buffer.length; i++) {
    float amplitude = map(mouseY, 0, height, 1.0, 0);
    sin.amp(amplitude);
    
    float frequency = map(mouseX, 0, width, 20, 1000);
    sin.freq(frequency);
    
    float panning = map(mouseX, 0, width, -1, 1);
    sin.pan(panning);
    
    beginShape();
    vertex(amplitude, frequency);
    endShape();
  }
  

 // line(amplitude);
}

float targetX() {
  return radius * sin(radians(mouseX));
}

float y() {
  return radius * cos(radians(mouseY));
}
