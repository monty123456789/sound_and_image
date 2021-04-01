PImage pic;


void setup() {
   size(549, 312, P2D);
  background(0);
  pic = loadImage("cat.jpg");
}

void draw() {
  background(pic);
  stroke(0);
  strokeWeight(10);
  //color n = get(mouseX, mouseY);
  
  int x = 10;
 // square(100,100, 100);
  
  
  if (keyPressed) {
    if(key == 'a') {
      x+=1;
    }
    if(key == 's') {
      x-=1;
    }
  }
  
  PImage ne = get(mouseX,mouseY,100/x,100/x);
 // print(ne);
 // fill(n);
  //print(n);
  
  print(x);
  scale(x);
  image(ne, mouseX/x, mouseY/x);
  //rect(25, 25, 50, 50);
}
