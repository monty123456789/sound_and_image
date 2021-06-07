class Leaves {
  PVector gravity, velocity, wind, gusts, position, h, lif, nos;
  float life;
  int edge = 2;
  float x;
  float n;
  float seed;
  float offset;
  float noiseVal;
  float noiseScale = .02;
  float co;

  Leaves(float a, float b, float c) {
    //seed = random(-1.5, 1.5);

    float r = random(-150, 300);
    position = new PVector(r, -20);
    velocity = new PVector(0, 0); 
    gravity = new PVector(0, .5);
    wind = new PVector(seed, 0);
    
    
   
    gusts = new PVector(a, 0);
    nos = new PVector(b, c);
     co = random(255);

    life = 1000;
    
   
  }
  
 


  void update(float r, float t, float u) {
    //float noiz = noise((position.y)*.01);
    //float noiz2 = noise((position.x)*.01);
    
    gusts.add(r, 0);
    gusts.add(t, 0);
    gusts.sub(u, 0);
    x += .0001;
    velocity.add(gusts).add(nos).add(gravity).add(wind);
    
    
    position.add(velocity);
      velocity.mult(0);
    //position.add(nos).add(gravity).add(gusts);
    
    
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
   
   pushMatrix();
   translate(position.x, position.y);
     rotate(nos.x);
   ellipse(0, 0, 15, 7);
   rect(-10, 0, 5, 1);
  // rect(100, 100, 200, 100, 0, 100, 0, 100);

   popMatrix();
   
   
  // float c = map(life, 0, 700, 0, 255);
   fill(0,co,0);
   noStroke();
 
  }


  boolean isDead() {
    if (life < 0.0) {
      return true;
    } else {
      return false;
    }
  }
  
  void edge() {
    
    //if (position.y >= height - 10) {
    //  gravity.set(0,0);
    //  nos.set(0,0);
    //  gusts.set(0,0);
    //}
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
