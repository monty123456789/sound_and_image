void setup() {
  size(1920, 1080);
}

int total = width * height;
float y = 035;

float x = 1;

float j;
color a;
color b;
float d;
//

void draw() {
   



  background(0);

 
  pushMatrix();
   
  translate((width/2)-width/4, height/2);
  scale(0.15);
  spiral(y, d);
  popMatrix();

  pushMatrix();
  translate((width/2)+width/4, height/2);
  scale(0.15);
  spiral(-y, -d);
  popMatrix();




  saveFrame("spiral_76");
}



void keyPressed() {

  // x += 0.01;
  redraw();
}

void spiral(float rotate, float f) {
 
  for (j = 1; j < width; j = j+1) {
    x += .00001;
    d = map(j, 0, width/4, 0, 255);

    y += 0.000001;

    //noStroke();
    stroke(255-f, .0, f);
    fill(f, 0, 255-f);
    circle(j, j, j/10);
    fill(0);
    circle(-j, -j, -j/10);     
    rotate(radians(rotate));
    println(y);
  }
}   
