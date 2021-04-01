void setup() {
  size(1920, 1080);
  //scale(0.05);
}

int total = width * height;
float y = 15;

float x = 1;


void draw() {

  //  camera(mouseX, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

  //for (int i = 255; i >= 100; i--) {
  
  background(0);
 
  
  translate(width/2, height/2);
      //  scale(.);

       
       
    for (float j = 1; j < width; j = j+1) {
        x += .00001;

        color a = color(200 ,10, 255);
        color b = color(j ,0,-j + x);

        //strokeWeight(4);

      
        y += 0.00001;

        pushMatrix();
        noStroke();
        fill(255,0,0);
        //rotate(radians(y));
        circle(j, j, j);
        popMatrix();
        
        pushMatrix();
        //stroke(0,0,255);
       // noStroke();
        fill(0);
       // rotate(radians(-y));
        circle(-j, -j,-j);
        popMatrix();
        
       rotate(radians(y));
        //noFill();
      
     
      }

  saveFrame("spiral_76");
}



void keyPressed() {
 
 // x += 0.01;
  redraw();
}
