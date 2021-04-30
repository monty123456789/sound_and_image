PImage me;

void setup() {
  size(540, 260);
  background(0);
}

void draw() {
  me = loadImage("cat.jpg");
 // translate(width, 0);
 // scale(0.25);
 // rotate(radians(90));
 
 image(me, 0, 0);
          int s = 10;

    loadPixels();
    for (int i = 1; i <s; i++) {
      //color c = get(mouseX , mouseY);
      //println(c);
      //fill(b);
      for (int j = 1; j < s; j++) {
        color b = get(mouseX +j, mouseY + i);
        
        
      noStroke();
            fill(b);

      square(mouseX + j*s, mouseY +i*s, s);
     // square(10*i, 10, 10);
      //square(10,20,10);
      }
   // c[i] = mouseY;
     
    }
  
  //fill(c[1]);
  
  
  
}
