class LeavesSystem {
  ArrayList<Leaves> leavesN;
  PVector origin, h, w, m;
   color c;
   int test = 0;
   
  LeavesSystem(float x, float y) {
   leavesN = new ArrayList<Leaves>();
   origin = new PVector(x,y);
   h = new PVector(0, height);
   w = new PVector(random(-1, 1), 0);
   m = new PVector(width/2, height/2);
  }


  void addLeaves() {
    test += 1;
    if (test % 10 == 0) {
    leavesN.add(new Leaves(random(.1, .5), noise(10*.01), noise((2)*.01)));
  }
  }
  
  // void force(PVector f) {
  //  for(int i = 0; i < leavesN.size(); i++) {
  //    leaves.get(i).force(f);
  //  }
  //}
  
  void edgeForce() {

      
  }

  void run() {
    
    for (int i = leavesN.size()-1; i >= 0; i--) {
      Leaves n = leavesN.get(i);
      //n.position.add(w);
      n.edge();
      n.update(random(-.05, .05), noise(n.position.y * .01)/50, noise(n.position.x * .01)/50);
      n.display();
      
      
    if (n.position.y >= height - 10) {
      n.gravity.set(0,0);
      n.nos.set(0,0);
      n.gusts.set(0,0);
      //w.set(0,0);
    }
    
      if (n.isDead()) {
        leavesN.remove(i);
      }
    }
   }
}
