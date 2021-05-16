  int leavesC = 256;
  //PVector gravity, velocity, wind, movement, position;
 // ArrayList<LeavesSystem> leaves;
  ArrayList<LeavesSystem> leaves = new ArrayList<LeavesSystem>();
  int radius = 20;
  float edge;
  PVector d, h;
  float r; 
  int x;

  void setup() {
    size(600,400);
    leaves = new ArrayList<LeavesSystem>();
   for (int i = 0; i< 5; i++) {
      leaves.add(new LeavesSystem(10*i,-2));
  }
  }
  
  void draw() {
     x +=1;
   
    
    
    println(leaves.size());
  
    background(0);
  
    for(int i = 0; i< leaves.size(); i++) {
      LeavesSystem nl = leaves.get(i);
      nl.run();
      nl.addLeaves();

       
      
  
      
     
    }
  }

  
  //void mousePressed() {
  //  leaves.add(new LeavesSystem(mouseX, mouseY));
  //}
 
