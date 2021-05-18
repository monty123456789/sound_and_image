PVector wind, x, y, position, co, shap;
PShape s;
ArrayList<Co> cos = new ArrayList<Co>();
IntList ex, ey;
void setup() {
  size(1080, 810);
  shap = new PVector(0,0);
  ex = new IntList();
  ey = new IntList();
  
  for(int i = 0; i< width; i+=5) {
    ex.append(i);
    for (int j = 0; j < height; j+=20) {
      cos.add(new Co(i, j,0));
      ey.append(j);
      
  }
  }
     
  
}

void draw() {
//spotLight(255, 0, 0, 0, 0, 400, 0, 0, -1, PI, 0);
background(0);
 
      for(int i = 0; i< cos.size()-1; i++) {
        Co n = cos.get(i);
        Co m = cos.get(i+1);
        n.update();
        float ax = 1;
         ax+= 1;
         println(ax);

    //println(cos.size());
    
     
    
        //position.add(wind);
        //circle(position.x, position.y, 10);
       }
       saveFrame("grid1_####.jpg");
       
    }
  
//void fil() {
//    float f = position.dist(m);
//    float c = map(noiz3, 0, .5, 0, 255);
//  }  
 
void lines() {
      int ad = 40;
   //if (m.position.y > height - ad|| m.position.x > width - ad|| n.position.y > height - ad || n.position.x > width - ad) {
     // //if (n.position.y  >height || (n.position.x  >width) ) {
     //  stroke(0, 0);
     //} else {
     //  stroke(255);
     //}
     
     //s = createShape();
     //s.beginShape();
     //s.vertex(m.position.x, m.position.y);
     //s.vertex(n.position.x, n.position.y);
     //s.endShape();
     //shape(s, 25, 25);
    // line(m.position.x,m.position.y, n.position.x, n.position.y);
    // line(m.position.x,m.position.y, n.position.x, n.position.y);
   }


  void keyPressed() {
    
      if(key =='r') {
        setup();
      }
    
  }
