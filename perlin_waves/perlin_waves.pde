ArrayList<Ball> b;
ArrayList<Ball>b2;
int test = 1;
int a1, a2;
float t= 20;

void setup() {
  size(600,400, P3D);
  b = new ArrayList<Ball>();
  for(int i = 0; i< width; i+=2) {
    for(int j = 0; j < height; j +=2) {
      for(int k= 0; k < 2; k++) { 
         b.add(new Ball(i, j, k));
       //b2.add(new Ball(j, ));
      
    }
    }
  }
}

void draw() {
  camera(width/2, height/1.2, (height/4) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  //spotLight(51, 102, 126, 80, 20, 40, -1, 0, 0, PI/2, 2);
   //yellow
   //directionalLight(255, 215, 0, .7, .7, .5);
   //blkue
   directionalLight(0, 0, 255, .7, -.2, -1);
      

  //ortho(-width/2, width/2, -height/2, height/2);
 // lights();
  scale(1.3);
  translate(-60,-150);
  //translate(width/1.5, height/1.5);
 // spotLight(0, 255, 255, 0, 100, 350, 50, 0, 0, PI, .7);
  test+=1;
  println(test + "t4");
  background(0, 9, 21);
//  t += .05;
  for( int i = b.size()-1; i> 0; i--) {
    Ball be = b.get(i);
    be.move();
   // be.display();
    be.display3d();
    
   // be.mapSpeed();
    be.zBounce(t);
    be.edges();
    //be.stripes();
    
  }
  saveFrame("perlin_waves_5_1_######.jpg");
}
