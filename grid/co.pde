class Co {
  PVector wind, position, co, w, w2, w3, w4, mult; 
     float wi, wi2, wi3, wi4;
  float noiseV;
  float noiz, noiz2, noiz3, noiz4, x;
  
  Co(float x, float y) {
    
   wind = new PVector(1, 1); 
   position = new PVector(x, y);
   mult = new PVector(0,0);
   w = new PVector(width, height);
   w2 = new PVector(0, height);
   w3 = new PVector(width, 0);
   w4 = new PVector(0, 0);
  }
  
  void update() {
    run();
    wid();
    nois();
   // leftright();
    edge();
  }
  
  void threed() {
     pushMatrix();
     fill(255);
     translate(position.x, position.y);
     sphere(5);
     noStroke();
      fill(255);
     popMatrix();
  }
  
  void run() {
  //  position.add(wind);
    
  circle(position.x, position.y, 5);
    
  }
  
  void wid() {
    wi = position.dist(w);
    wi2 = position.dist(w2);
    wi3 = position.dist(w3);
    wi3 = position.dist(w3);
    
    wi3/=500;
    wi4/=500;
    wi2/=500;
    wi/=500;
    
    //position.sub(wi, wi);
    //position.sub(wi2, wi2);
    //position.add(wi3, wi3);
    //position.add(wi4, wi4);
  }
  
  void nois() {
    x += .01;
    noiz = noise(position.y * .01);
    noiz2 = noise(position.x * .01);
    noiz3 = noise(position.y * .02);
    noiz4 = noise(position.x * .02);
    
    position.add(noiz, noiz2);
    position.add(wind);
   // position.sub(noiz*x, noiz2*x);
  }
  
  void edge() {
    
    if (position.y > height) {
      position.sub(0, height);
      // position.sub(mult);
    } else if (position.x > width) {
       position.sub(width, 0);     
    } 
    
    
  }
  
  void leftright() {
    for (int i = 0; i< 1200; i++) {
      if (i< 600) {
        position.add(wi2, wi2);
      } else if (i> 600) {
        position.sub(wi2, wi2);
      }
    }
  }
}
