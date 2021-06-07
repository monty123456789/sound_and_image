PVector wind,  position, co, shap, initial, current;
////PShape s;
ArrayList<Co> cos = new ArrayList<Co>();
 ArrayList<Co> cos2 = new ArrayList<Co>();
//IntList ex, ey;
int ax;
float ex = .0001;
float x, y,x2, y2;
PShape s;
float ad = 20;
int rand;
void setup() {
  size(1440, 1080);
 //s = (1,0);
  //shap = new PVector(0, 0);
  //ex = new IntList();
  //ey = new IntList();
  
  //for vertex/circles i = 0, for lines i = 10
  for (int i = 0 ; i< width; i+=1) {
    //ex.append(i);
    
    for (int j = 0; j < height ; j+=15) {
      rand = int(random(0, 10));
      //creating new circle objects with coordinates of i and j, adding these objects to array list. 
      cos.add(new Co(i, j));
     // cos.add(new Co(j, i));
      
      //cos2.add(new Co(i, j));
     // cos2.add(new Co(j, i));
    }
    
  }
}

void draw() {
  //spotLight(255, 0, 0, 0, 0, 400, 0, 0, -1, PI, 0);
  background(0);
  ax+= 1;
   ex += .0001;
  if (ax > 40000) {
    exit();
  }
  println(ax + "number    ");
  println(ex + "x     ");

   //extracting objects from arrayList, and adding them to the draw loop so they update. 
  for (int i = cos.size()-1; i > 0; i--) {
     //Co ex = cos2.get(i);
     //x2 = ex.position.x;
     //y2 = ex.position.y;
    
    Co n = cos.get(i-1);
    Co m = cos.get(i);
    
    m.update();
    n.update();
    m.nois(ex);
    n.nois(ex);
    
     x = m.position.x;
     y = m.position.y;
   
      x2 = n.position.x;
      y2 = n.position.y;
  
     
      stroke(255);
     // circles(3);
      //strokeWeight(2);
     //lines();
     //tex();
    
  }

 
   //float d = m.position.dist(initial);
   // println(d);
   // float c = map(d, 0, 1000, 0, 255);
   // stroke(c);
  saveFrame("grid1_#####.jpg");
}


void tex() {
    pushMatrix();
  beginShape();
  
  translate(y, y);
 // vertex(x, y);
//  vertex(x, y);

  vertex(0,0);

  endShape();
  popMatrix();
}

void lines() {
   if (y > height - ad|| x > width - ad|| y < 0 + ad|| x < 0 + ad|| y > height - ad|| x > width - ad ||y < 0 + ad || x < 0 + ad) {
   //if (y  >height || (x  >width) ) {
    stroke(0, 0);
  } else {
    stroke(255);
  }

 // shape(s);
   line(x2,y2, x, y);
  // line(y,x, y, x);
   }  

void circles(int n) {
  circle(x, y, n);
}































//void lines() {
//  int ad = 40;
//  if (y > height - ad|| x > width - ad|| y > height - ad || x > width - ad) {
//   //if (y  >height || (x  >width) ) {
//    stroke(0, 0);
//  } else {
//    stroke(255);
//  }

//  s = createShape();
//  s.beginShape();
//  s.vertex(x, y);
//  s.vertex(x, y);
//  s.endShape();
//  shape(s, 25, 25);
//   line(x,y, x, y);
//   line(x,y, x, y);
//}


void keyPressed() {

  if (key =='r') {
    setup();
  }
}
