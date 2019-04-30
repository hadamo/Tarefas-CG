void setup()
{
  size(500,500,P3D);
}

void draw()
{
  background(170,170,170);
  pushMatrix();
  translate(width/2,height/2);
  box(100,150,50);
  translate(-20,-50,55);
  box(30,10,10);
  translate(38,8,55);
  box(30,10,10);
  translate(-9,75,55);
  box(20,30,10);
  translate(-18,-7,55);
  box(15,25,10);
  popMatrix();
}
