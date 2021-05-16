class Leaves {
  PVector gravity, velocity, wind, gusts, position, h;
  float life;
  int edge = 2;
  float x;
  float n;
  float seed;
  float offset;
  float noiseVal;
  float noiseScale = .02;

  Leaves(float x, float y) {



    position = new PVector(x, y);
    velocity = new PVector(0, 0); 
    gravity = new PVector(0, .0);
    wind = new PVector(0, 0);
    gusts = new PVector(0, offset);
   

    life = 800;
    seed = random(.01);
  }


  //void run() {
  //  update();
  //  display();

  //  //edges();
  //}


  void update() {

    //noiseDetail(1,.9);
    float noiz = noise(seed+(position.y)*.02);
    float noiz2 = noise((position.x)*.03);
    
    position.add(noiz, noiz2).add(velocity).add(wind);
    wind.add(seed, 0);
    
    
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
    circle(position.x, position.y, 10);
    noStroke();
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
