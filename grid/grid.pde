PVector wind,  position, co, shap, initial, current;
//PShape s;
ArrayList<Co> cos = new ArrayList<Co>();
 ArrayList<Co> cos2 = new ArrayList<Co>();
IntList ex, ey;
int ax;
float x, y, x2, y2;
PShape s;
void setup() {
  size(1080, 1080);
 //s = (1,0);
  shap = new PVector(0, 0);
  ex = new IntList();
  ey = new IntList();

  for (int i = 0; i< width; i+=1) {
    ex.append(i);
    for (int j = 0; j < height; j+=15) {
      //creating new circle objects with coordinates of i and j, adding these objects to array list. 
      cos.add(new Co(i, j));
      cos2.add(new Co(i, j));
      cos2.add(new Co(j, i));
      cos.add(new Co(j, i));
      //ex.append(i);
      ey.append(j);
      
     // println(i);
    }
    
  }
}

void draw() {
  //spotLight(255, 0, 0, 0, 0, 400, 0, 0, -1, PI, 0);
  background(0);
  ax+= 1;
  println(ax);
  float c;
   //extracting objects from arrayList, and adding them to the draw loop so they update. 
  for (int i = cos.size()-1; i > 0; i--) {
     Co ex = cos2.get(i);
     x2 = ex.position.x;
    y2 = ex.position.y;
    
    Co n = cos.get(i);
    Co m = cos.get(i-1);
    
    n.update();
    m.update();
    x = m.position.x;
     y = m.position.y;
   
    current = new PVector(x, y);
    initial = new PVector(x2, y2);
    
    float d = initial.dist(current);
   
    c = map(d, 0, 1080, 0, 255);
    stroke(255);
   // println(c);
    int ad = 0;
   // println(c);
  
  //if (m.position.y > height - ad|| m.position.x > width - ad|| m.position.y < 0 + ad|| m.position.x < 0 + ad|| n.position.y > height - ad|| n.position.x > width - ad ||n.position.y < 0 + ad || n.position.x < 0 + ad) {
  // //if (n.position.y  >height || (n.position.x  >width) ) {
  //  stroke(0, 0);
  //} else {
  //  stroke(255);
  //}
 pushMatrix();
  beginShape();
  translate(m.position.x, m.position.y);
 // vertex(m.position.x, m.position.y);
//  vertex(n.position.x, n.position.y);

vertex(0,0);

  endShape();
  popMatrix();
 // shape(s);
   //line(m.position.x,m.position.y, n.position.x, n.position.y);
   //line(m.position.y,m.position.x, n.position.y, n.position.x);
    
     
    //if (n.position.x > width || n.position.x < 0 || n.position.y > height || n.position.y < 0) {
    //  cos.remove(i);
    //}
  }
   //float d = m.position.dist(initial);
   // println(d);
   // float c = map(d, 0, 1000, 0, 255);
   // stroke(c);
  saveFrame("grid1_####.jpg");
}




































//void lines() {
//  int ad = 40;
//  if (m.position.y > height - ad|| m.position.x > width - ad|| n.position.y > height - ad || n.position.x > width - ad) {
//   //if (n.position.y  >height || (n.position.x  >width) ) {
//    stroke(0, 0);
//  } else {
//    stroke(255);
//  }

//  s = createShape();
//  s.beginShape();
//  s.vertex(m.position.x, m.position.y);
//  s.vertex(n.position.x, n.position.y);
//  s.endShape();
//  shape(s, 25, 25);
//   line(m.position.x,m.position.y, n.position.x, n.position.y);
//   line(m.position.x,m.position.y, n.position.x, n.position.y);
//}


void keyPressed() {

  if (key =='r') {
    setup();
  }
}
