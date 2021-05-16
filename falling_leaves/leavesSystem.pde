class LeavesSystem {
  ArrayList<Leaves> leavesN;
  PVector origin, h, w, m;
   color c;
   
  LeavesSystem(float x, float y) {
   leavesN = new ArrayList<Leaves>();
   origin = new PVector(x,y);
   h = new PVector(0, height);
   w = new PVector(0, 0);
   m = new PVector(width/2, height/2);
  }


  void addLeaves() {
    leavesN.add(new Leaves());
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
      Leaves n = leavesN.get(i);
      float he = n.position.dist(h);
      he = he/1000; 
      float we = n.position.dist(w);
      we = we/5000;
      float mi = n.position.dist(m);
      mi /= 700;
      //n.position.add(0,we);
      //n.position.add(0, he*2); 
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
