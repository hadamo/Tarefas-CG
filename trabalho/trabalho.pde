int wing=0;
float angle = radians(0);
void setup()
{
  size(1000,1000,OPENGL);
  background(#C6C6B2);
}
void draw()
{
  background(#C6C6B2);
  pushMatrix();
  translate(width/2 +45, height/2 -50, 0);
 // rotateY(angle);
  noStroke();
  fill(#F7F707);
  box(50,50,90);
  popMatrix();
  pushMatrix();
  translate(width/2, height/2, 0);
 // rotateY(angle);
  noStroke();
  fill(#F7F707);
  box(90,90,90);
  
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2,90);
  //rotateY(angle);
  stroke(0);
  fill(0);
  translate(-40,20,45);
  rotateX(PI);
  rotateZ(radians(wing));
  box(40,15,0);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2,90);
  //rotateY(angle);
  stroke(0);
  fill(0);
  translate(-40,20,-45);
  rotateX(PI);
  rotateZ(radians(wing));
  box(40,15,0);
  popMatrix();
  angle+= radians(1);
}
void keyPressed()
{
  if(wing < 0) wing = 0;
  else wing = -45;
}
