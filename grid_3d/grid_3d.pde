PVector wind,  position, co, shap, initial, current;
////PShape s;
ArrayList<Co> cos = new ArrayList<Co>();
 ArrayList<Co> cos2 = new ArrayList<Co>();
//IntList ex, ey;s
int ax;
float x, y, z, x2, y2, z2;
PShape s;
float ad = 20;
void setup() {
  size(1080, 810, P3D);
 //s = (1,0);
  //shap = new PVector(0, 0);
  //ex = new IntList();
  //ey = new IntList();

  //for vertex/circles i = 0, for lines i = 10
  for (int i = 0; i< width; i+=15) {
    //ex.append(i);
    for (int j = 0; j < height; j+=15) {
      //for (int k = 0; k < 100; k +=1) {
      //creating new circle objects with coordinates of i and j, adding these objects to array list. 
        cos.add(new Co(i, j, 0));
     // cos.add(new Co(j, i));
      
      //cos2.add(new Co(i, j));
     // cos2.add(new Co(j, i));
    
    }
  }
}

void draw() {
  spotLight(255, 255, 255, 0, 0, 400, 0, 0, -1, PI, 0);
   camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  background(0);
  ax+= 1;
  //println(ax);

   //extracting objects from arrayList, and adding them to the draw loop so they update. 
  for (int i = cos.size()-1; i > 0; i--) {
     //Co ex = cos2.get(i);
     //x2 = ex.position.x;
     //y2 = ex.position.y;
    
    Co n = cos.get(i-1);
    Co m = cos.get(i);
    
    m.update();
    n.update();
    
     x = m.position.x;
     y = m.position.y;
     z = m.position.y;
     println(z);
   
      x2 = n.position.x;
      y2 = n.position.y;
      z2 = n.position.z;
  
    
    float c = map(z, 0, 1000, 0, 255);
    fill(c);
     stroke(255);
      //strokeWeight(2);
     //lines();
    // lines();
    lines();
    
  }

 
   
  saveFrame("grid1_####.jpg");
}


void tex() {
    pushMatrix();
  beginShape();
  
  translate(x, y, z);
 // vertex(x, y);
//  vertex(x, y);

  vertex(0,0,0);

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
  
   line(x,y, z, x2, y2, z2);
    //line(x2,y2, z2, x, y, z);
  // line(y,x, y, x);
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
