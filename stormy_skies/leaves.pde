class Leaves {
  PVector gravity, velocity, wind, gusts, position, h, lif;
  float life;
  int edge = 2;
  float x;
  float n;
  float seed;
  float offset;
  float noiseVal;
  float noiseScale = .02;

  Leaves(float x, float y) {


    float r = random(-50, 50);
    position = new PVector(x, y);
    velocity = new PVector(0, 0); 
    gravity = new PVector(0, .70);
    wind = new PVector(0, 0);
    lif = new PVector(life/800, 0);
   

    life = 800;
    seed = random(.5, 1.5);
  }


  //void run() {
  //  update();
  //  display();

  //  //edges();
  //}


  void update() {
    x += .0001;
    //noiseDetail(1,.9);
    float noiz = noise( (position.y)*.01);
    float noiz2 = noise((position.x)*.01);
    
    //position.add(gravity);
    //position.sub(0, position.y);
    
    life -= 1;
    x += .005;
  }

  //void area() {
  //  float a = height - position.x;
  //  velocity.add(a, 0);

  //}
  void force(PVector f) {
    position.add(f);
  }



  

  void display() {
   
  // pushMatrix();
  // fill(255);
  // ellipse(width/2, height/2, 100, 70);
  //  fill(0);
  // circle(width/2, height/2, 60);
  //fill(255, 0, 0);
  // circle(width/2, height/2, 20);
   
  // popMatrix();
   
   //pushMatrix();
   //fill(255);
   // ellipse(position.x, position.y, 15, 11);
   // fill(0);
   //circle(position.x, position.y, 10);
   //fill(255, 0, 0);
   float c = map(life, 0, 700, 0, 255);
   fill(255);
   //noStroke();
   //fill(255, 255, 0);
   circle(position.x, position.y, 10);
   //popMatrix();
    //noStroke();
    //fill(life);
  }


  boolean isDead() {
    if (life < 0.0) {
      return true;
    } else {
      return false;
    }
  }
  
 

  void edges() {
    if ( position.y >= height-radius) {
      //  //position.y = height-radius;
      velocity.y *= -edge;
    } else if ( position. y <= 0) {
      //position.y = 0;
      velocity.y *= -edge;
    } else if ( position.x >= width) {
      // position.x = width;
      velocity.x *= -edge;
    } else if (position. x <= 0) {
      //position.x = 0;
      velocity.x *= -edge;
    }
  }
}
