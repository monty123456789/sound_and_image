class CoSystem {
  ArrayList<Co> particles;
  PVector origin;
  
  CoSystem(float x, float y) {
    origin = position.copy();
    particles = new ArrayList<Co>();
    
  }
  
  void addParticles() {
    particles.add(new Co(x, y));
  }
  
  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Co p = particles.get(i);
      p.update();
    }
  }
}
    
    
    
    
