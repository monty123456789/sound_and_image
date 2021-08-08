class Ball {
  
  PVector acceleration, acceleration2, velocity, location, gravity;
  float x, seed, m;
  float c1, c2, c3, co1, co2, co3;
  float ex, y, z, zA;
  
  Ball(float a, float b, float c) {
    y = b;
    acceleration = new PVector();
    gravity = new PVector(0, 0.15);
    acceleration2 = new PVector();
    velocity = new PVector();
    location = new PVector(a, b, c);
    seed = random(1000);
    c1 = a;
    c2 = b;
    c3 = b;
  }
  
  void move() {
    x+= .001;
    float n = noise(location.x * .01 ) ;
    float n2 = noise(location.y * .005  ) ;
    float n3 = noise(location.z * .01 +x);
    zA = n3;
   
    c3 = map(n3, 0, 1, 0, 255);
    
     co1 = map(n, 0, 1, 50, 255);
    co2 = map(n2, 0, 1, 50, 255);
    co3 = map(n3, 0, 1, 0, 255);
    //println(n3);
    n = map(n, 0, 1, -.2, .2);
    n2 = map(n2, 0, 1, -.2, .2);
    n3 = map(n3, 0, 1, -.2, .2);
    float m1 = n3;
    
    c1 = map(c1, 0, width, 0, 255);
    c2 = map(c2, 0, height, 0, 255);
    


    //float n3 = noise(location.x * x) + x ;
    //float n4 = noise(location.y * x*100) + x ;
    //acceleration2 = new PVector(n3, n2);
    
    acceleration = new PVector(n2, n3, n);
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(.2 + zA/5);
    
  }
  
  void display() {
   fill(255);
   noStroke();
    circle(location.x, location.y, 1);
    
  }
  
  void stripes() {
    if (y % 90 == 0) {
      fill(255-c3); 
    } else {
      fill(255);
    }
  }
  
  
  
  void display3d() {
    //fill((co1 + co2)/2);
    float c = map(location.z, -20, 15, 90, 255);
    fill(c);
    
  //  fill(255, 100);
      noStroke();
    pushMatrix();
    translate(location.x, location.y, location.z);
  
    sphere(1);
    popMatrix();
  }
  
  void edges() {
    if (location.x > width) {
      location.x = 0;
      //velocity.x *=-1;
    } else if (location.x < 0) {
      location.x = width;
     // velocity.x *=-1;
    } else if (location.y > height) {
      location.y = 0;
      //velocity.y *= -1;
    } else if (location.y < 0) {
      location.y = height;
     // velocity.y *= -1;
    }
    
  }
  
  void zBounce(float t) {
    
    if (location.z > t) {
       location.z = t;
       velocity.z *= -1;
    } else if (location.z < -t) {
      location.z = -t;
      velocity.z *= -1;
    }
  }
  
  void mapSpeed() {
    float high = 1.1;
    float low = .9;

    //if (location.z < 0 && velocity.z < 0) {
    //   m = map(location.z, 0, -40, high, low);
    //   velocity.mult(m);
    //}  if (location.z > 0 && velocity.z > 0) {
    //  m = map(location.z, 0, 40, high, low);
    //  velocity.mult(m);
    //}  if (location.z < 0 && velocity.z > 0) {
    //  m = map(location.z, 0, -40, low, high);
    //   velocity.mult(m);
    //}   if (location.z > 0 && velocity.z < 0) {
    //  m = map(location.z, 0, -40, high, low);
    //   velocity.mult(m);
    //} 
  }
  
  void edgesBounce() {
    if (location.x > width) {
      location.x = 0;
      velocity.x *=-1;
    } else if (location.x < 0) {
      location.x = width;
      velocity.x *=-1;
    } else if (location.y > height) {
      location.y = 0;
      velocity.y *= -1;
    } else if (location.y < 0) {
      location.y = height;
      velocity.y *= -1;
    } else if (location.z > width) {
      location.z = width; 
      location.z *= -1;
    } else if (location.z < 0) {
      location.z = 0;
      location.z *= -1;
    }
    
  }
  
}
