void setup()
{
  size(400,400,P3D);
  background(0);
}

void draw()
{
  
  noStroke();
  ambientLight(51, 102, 126);
  directionalLight(51, 102, 126, mouseX, mouseY, -1);
  pointLight(51, 102, 126, 35, 40, 36);
  translate(80, 50, 0);
  sphere(30);
  ambientLight(51, 102, 126);
  directionalLight(51, 102, 126, mouseY, mouseX, -1);
  translate(100,80,0);
  box(30);
  
  
}
