void setup() {
  size(1920, 1080);
  //scale(0.05);
}

int total = width * height;
float y = 35;

float x = 10;


void draw() {

  //  camera(mouseX, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

  //for (int i = 255; i >= 100; i--) {
  
  background(0);
 
  
  translate(width/2, height/2);
     //scale(0.5);

       
       
    for (float j = 1; j < width; j = j+1) {
        x += .0001;

        color a = color(-x ,0,0);
        
        //strokeWeight(4);

      
        y += 0.00001;
       // scale(x);
        print(x + "  ");

        
        
        
        pushMatrix();

        stroke(a/20);
        //noStroke();

        fill(a);

        rotate(radians(y));
        circle(j, j, j);
        popMatrix();
        
        pushMatrix();
                        tint(0, 0);

        stroke(0,0,255);
        //noStroke();
        fill(a/20);
        rotate(radians(y));
        circle(-j, -j, j);
        popMatrix();
        
        rotate(radians(y));
        //noFill();
      
     
      }
     
  


    
    
      
    
  saveFrame("spiral_68");
}



void keyPressed() {
 
 // x += 0.01;
  redraw();
}
