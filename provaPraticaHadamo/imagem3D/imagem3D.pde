void setup()
{
  size(600,600,P3D);
}

void draw()
{
  float eixoZ = 30;
  background(150,150,150);
  //directionalLight(150,150,150, mouseX, mouseY, 0); 
  float dirY = (mouseY / float(height) - 0.5) * 2;
  float dirX = (mouseX / float(width) - 0.5) * 2;
  directionalLight(255, 255, 255, -dirX, -dirY, -10); 

  rotateY(PI * ((float)mouseX/(360)));
  
  noStroke();
  fill(255);
  pushMatrix();
    translate(width/2 +62,height/2 -50);
    box(275,125,eixoZ);
  popMatrix();
  fill(255,0,0);
  pushMatrix();
    translate(width/2 ,height/2 +75);
    box(400,125,eixoZ);
  popMatrix();
  fill(0,0,255);
  pushMatrix();
    translate(width/2 -138,height/2 -50);
    box(125,125,eixoZ);
  popMatrix();

  fill(255);
  //star(115,230, 15,40 ,5);
  pushMatrix();
  translate(165,250,1);
  rotate(31 / -100.0);
  star(0, 0,eixoZ, 20,50, 5); 
  
  popMatrix();
}


void star(float x, float y, float z,float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy,z);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy,z);
  }
  endShape(CLOSE);
}


  
