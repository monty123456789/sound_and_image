class Co {
  PVector wind, position, co, w, w2, w3, w4, mult; 
     float wi, wi2, wi3, wi4;
  float noiseV;
  float noiz, noiz2, noiz3, noiz4, noiz2z, noiz3z;
  float x = .0001;
  
  
  Co(float x, float y) {
   
   //wind = new PVector(100, 1); 
   position = new PVector(x, y);
   //mult = new PVector(0,0);
   //w = new PVector(width, height);
   //w2 = new PVector(0, height);
   //w3 = new PVector(width, 0);
   //w4 = new PVector(0, 0);
  }
  
  void update() {
     edge();
    run();
    //wid();
   // nois();
   // leftright();
   //threed();
   

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
    noStroke();
    fill(255);
   //circle(100,100,100);
  circle(position.x, position.y, 3);
    
  }
  
 
      
  
  void wid() {
    wi = position.dist(w);
    wi2 = position.dist(w2);
    wi3 = position.dist(w3);
    wi3 = position.dist(w3);
    
    wi3/=250;
    wi4/=500;
    wi2/=250;
    wi/=500;
    position.sub(0, 0);
   // position.add(wi3, wi2);
    //position.sub(wi, wi);
    //position.sub(0, wi2);
    //position.add(wi3, wi3);
    //position.add(wi4, wi4);
  }
  
  void nois(float x) {
    
    
    
   // noiz = noise(position.y * (.005 )+x);
   // noiz2 = noise(position.x *( .001 )+x);
    
   // noiz3 = noise((position.y * .0002) );
    
   // noiz4 = noise((position.x * .0007));
   //  noiz2z = noise(position.y * (.003 - x));
   //   noiz3z = noise(position.x * (.008 - x));
    
   // position.sub(noiz, noiz2);
   //position.add(noiz3, noiz4);
   //position.add(noiz2z, noiz3z);
   //position.sub(noiz2z, noiz3z);
  // position.add(.001, 0);
  
  
   noiz = noise((position.y * (.005) -100 + x));
    noiz2 = noise((position.x * (.005) + 100 + x));
    noiz3 = noise(position.y * .001);
    noiz4 = noise(position.x * .001);
    
    position.add(noiz, noiz2);
    position.sub(noiz3, noiz4);
  }
  
  void edge() {
    
    if (position.y > height) {
      position.sub(0, height);
      // position.sub(mult);
    } else if (position.x > width) {
       position.sub(width, 0);     
    } else if (position.y < 0) {
      position.add(0, height);
      // position.sub(mult);
    } else if (position.x < 0) {
       position.add(width, 0);     
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
