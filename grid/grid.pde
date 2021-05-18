PVector wind, x, y, position, co, shap;
PShape s;
ArrayList<Co> cos = new ArrayList<Co>();
IntList ex, ey;
int ax;
void setup() {
  size(1080, 1080);
  shap = new PVector(0, 0);
  ex = new IntList();
  ey = new IntList();

  for (int i = 0; i< width; i+=10) {
    ex.append(i);
    for (int j = 0; j < height; j+=20) {
      cos.add(new Co(i, j));
      ey.append(j);
    }
  }
}

void draw() {
  //spotLight(255, 0, 0, 0, 0, 400, 0, 0, -1, PI, 0);
  background(0);
  ax+= 1;
  println(ax);

  for (int i = cos.size()-1; i > 0; i--) {
    Co n = cos.get(i);
    Co m = cos.get(i-1);
    n.update();
    m.update();
    int ad = 20;
  if (m.position.y > height - ad|| m.position.x > width - ad|| m.position.y < 0 + ad|| m.position.x < 0 + ad|| n.position.y > height - ad|| n.position.x > width - ad ||n.position.y < 0 + ad || n.position.x < 0 + ad) {
   //if (n.position.y  >height || (n.position.x  >width) ) {
    stroke(0, 0);
  } else {
    stroke(255);
  }

  //s = createShape();
  //s.beginShape();
  //s.vertex(m.position.x, m.position.y);
  //s.vertex(n.position.x, n.position.y);
  //s.endShape();
  //shape(s, 25, 25);
   line(m.position.x,m.position.y, n.position.x, n.position.y);
   line(m.position.y,m.position.x, n.position.y, n.position.x);
    
     
    //if (n.position.x > width || n.position.x < 0 || n.position.y > height || n.position.y < 0) {
    //  cos.remove(i);
    //}
  }
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
