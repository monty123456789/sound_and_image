class Vehicles {
  
  PVector velocity, position, acceleration, desired, steer;
  //float maxspeed = 4; //random(1,10);
  float maxspeed;
  float maxforce= .2; //(random(.1, 1));
  int r = 6;
  float mag, d;
    float lifespan = 255;
  int value = 0;
  float x = 0, y = 0, e = 10;
  float r1,  r2,  r3;
  float noiz, noiz2;
  int test = 1;
  
  
  
  
  Vehicles(float x, float y) {
    maxspeed = 1; //random(1, 4);
   // I = new Independent();
    velocity = new PVector(); 
    position = new PVector(random(0, width), random(0, height));
    acceleration = new PVector(random(-1,1), random(-1, 1));
    desired = new PVector();
    steer = new PVector();
   println(test);
  }
  
  void run() {
    update();
    c(target);
    //follow(target);
   // afraid(target);
    visible();
     noiz = noise( (position.y)*.01);
     noiz *= test;
   noiz2 = noise((position.x)*.01);
   noiz2 *= test;
   // position.add(noiz, noiz2);
   // noisEdge();
    //edge(random(-3, 3), random(-1, -3), random(1, 3));
    //direction();
  }
  
 
  
  void update() {
     desired = PVector.sub(target, position);
    desired.normalize().mult(5);
    steer = PVector.sub(desired, velocity).limit(maxforce);
    
    //d = position.dist(target);    
    // mag = map(d, 0, 150, 0, maxspeed);
    
    
    velocity.add(acceleration).limit(maxspeed);
    position.add(velocity);    
    acceleration.mult(0);
   // I.update();
  }
  
  void follow(PVector target) {
    
    if (position.dist(target) < 100) {
      acceleration.add(steer); 
      //fill(0, 0, 255);
    } else {
      edge(random(-3, 3), random(-1, -3), random(1, 3));
     // noisEdge();
    }
  }

  void c(PVector target) {
    
    if (position.dist(target) < 100 && mousePressed == true) {
        r1 = 255;
        r2= 0;
        r3 = 0;
    } else if (position.dist(target) < 100 && mousePressed == false) {
        r1 = 0;
        r2= 255;
        r3 = 0;
    } else if (position.dist(target) >= 100){
      r1 = 0;
      r2 = 0;
      r3 = 255;

    }
    fill(r1, r2, r3);
  }

  
  void afraid(PVector target) {
    
     if (position.dist(target) < 100) {
      acceleration.sub(steer); 
    } else {
      edge(random(-3, 3), random(-1, -3), random(1, 3));
    //  noisEdge();
    }
  
  }  
 
  void noisEdge() {
   circle(0,0,10);
    
    if (position.y > height) {
      //position.sub(0, height);
      test = -1;
      println(test);
      // position.sub(mult);
    } else if (position.x > width) {
       test = -1;
       
      //position.sub(width, 0);     
    } else if (position.y < 0) {
      //position.add(0, height);
      test = 1;
      
      // position.sub(mult);
    } else if (position.x < 0) {
       //position.add(width, 0);    
       test = 1;
    } 
    
    
  }
  
   void edge(float either, float neg, float pos) {
    
    if (position.x < 0 - e) {
      x = pos;
      y = either;
    } else if (position.x > width + e) {
      x = neg;
      y = either;
    } else if (position.y < 0 - e) {
      x = either;
       y = pos;
    } else if (position.y > height + e) {
      x = either;
      y = neg;
    }
    acceleration.add(x, y);
    
    
  }
  
  void idle() {
    
  }
    
  boolean dead() {
    lifespan -= 1;
    if (lifespan <= 1) {
      return true;
    }else {
      return false;
    }
  }
  
  
    
  
  void visible() {
    
    float theta = velocity.heading() + PI/2;
    pushMatrix();
    
    //fill(255);
    noStroke();
    translate(position.x, position.y);
    rotate(theta);
    beginShape();
   
    vertex(0, -r*2);
    vertex(-r, r*2);
    vertex(r, r*2);
    endShape(CLOSE);
    popMatrix();

  }
}
