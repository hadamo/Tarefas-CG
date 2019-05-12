void setup()
{
  size(600,600);
}

void draw()
{
  background(150,150,150);
  noStroke();
  fill(255);
  rect(50,170,500,125);
  fill(255,0,0);
  rect(50,295,500,125);
  fill(0,0,255);
  rect(50,170,125,125);
  fill(255);
  //star(115,230, 15,40 ,5);
  pushMatrix();
  translate(115,235);
  rotate(31 / -100.0);
  star(0, 0, 20,50, 5); 
  
  popMatrix();
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
