class LeavesSystem {
  ArrayList<Leaves> leavesN;
  PVector origin, h;
  
   
  LeavesSystem(float x, float y) {
   leavesN = new ArrayList<Leaves>();
   origin = new PVector(x,y);
   h = new PVector(0, height);
  }


  void addLeaves() {
    leavesN.add(new Leaves(origin.x, origin.y));
  }
  
   void force(PVector f) {
    for(int i = 0; i < leavesN.size(); i++) {
      leaves.get(i).force(f);
    }
  }
  
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
      he = he/500;
         println(he);
 
      
      
      
      float we = n.position.dist(h);
      we = we/500;
      n.position.add(0, he);
      
       color c = (i);
      //fill(c);
      
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
