class LeavesSystem {
  ArrayList<Leaves> leavesN;
  PVector origin, h, w, m, gusts, gusts2;
   color c;
   float ex, ey;
   
  LeavesSystem(float x, float y) {
   leavesN = new ArrayList<Leaves>();
   origin = new PVector(x,y);
   h = new PVector(0, height);
   w = new PVector(width, 0);
   m = new PVector(width/2, height/2);
   gusts = new PVector(0, 0);
  gusts2 = new PVector(0, 0);

  }


  void addLeaves() {
    leavesN.add(new Leaves(origin.x,origin.y));
  }
  
  // void force(PVector f) {
  //  for(int i = 0; i < leavesN.size(); i++) {
  //    leaves.get(i).force(f);
  //  }
  //}
  
  void edgeForce() {
    //float he = position.dist(h);
    //he = he/100;
    //float we = position.dist(h);
    //we = we/100;
    //position.add(we, he);
    //println(he + 'h');
    //println(we + 'w');
      
  }

  void run() {
    
    for (int i = leavesN.size()-1; i >= 0; i--) {
      float small = .00001;
      float big = .00005;
      
      Leaves n = leavesN.get(i);
      
       float he = n.position.dist(h);
      he = he/600; 
      float we = n.position.dist(w);
      we = we/500;
      float mi = n.position.dist(m);
      mi /= 700;
      
      if (n.position.y < height-200) {
        ex += small;
        ey += big;
       gusts.add(ex, ey).limit(1);
         n.position.add(gusts);  
      
      } else if (n.position.y > height-200 && n.position.y < height-100){  
       // rotate(small);
        ex -= big;
        ey -= big;
        gusts.add(ex, ey).limit(-1);
        gusts2.add(ex, ey).limit(-1);
        println(gusts);
        n.position.add(gusts2);  
      } 
        
       
    
        
        
       
      //n.position.add(0,we);
     // n.position.add(0, -he); 
      //n.position.add(mi, -mi);
      
      
      
     // fill();
      
      n.update();
      n.display();
     //n.edgeForce();
      //n.edges();
      if (n.isDead()) {
        leavesN.remove(i);
      }
    }
   }
}
