PImage img;
float rotx = PI/4;
float roty = PI/4;

void setup() {
size(640,360, OPENGL);
//img = loadImage("frutas.jpg");
img = loadImage("azul.jpg");
textureMode(NORMAL);
fill(255);
stroke(color(44,48,32));
//noStroke();
//img.resize(50,50);
///textureMode(NORMAL);
}
void draw() {
  background(0);
  
  /*translate(width/2, height/2);
  rotate(map(mouseX, 0, width, -PI, PI));
  if (mousePressed) 
  {
    textureWrap(REPEAT);
  }else
  {
    textureWrap(CLAMP);
  }
  beginShape();
    texture(img);
    vertex(-100, -100, 0, 0);
    vertex(100, -100, 2, 0);
    vertex(100, 100, 2, 2);
    vertex(-100, 100, 0, 2);
  endShape();*/
  /*
  translate(width/2, height/2, 0);
  rotateY(map(mouseX, 0, width, -PI, PI));
  beginShape();
    texture(img);
    vertex(-100, -100, 0, 0, 0);
    vertex(100, -40, 0, 300, 120);
    vertex(0, 100, 0, 200, 400);
  endShape();*/
  noStroke();
  translate(width/2.0, height/2.0, -100);
  rotateX(rotx);
  rotateY(roty);
  scale(90);
  TexturedCube(img);
}

void TexturedCube(PImage tex) {
  beginShape(QUADS);
  texture(tex);

  // Given one texture and six faces, we can easily set up the uv coordinates
  // such that four of the faces tile "perfectly" along either u or v, but the other
  // two faces cannot be so aligned.  This code tiles "along" u, "around" the X/Z faces
  // and fudges the Y faces - the Y faces are arbitrarily aligned such that a
  // rotation along the X axis will put the "top" of either texture at the "top"
  // of the screen, but is not otherwised aligned with the X/Z faces. (This
  // just affects what type of symmetry is required if you need seamless
  // tiling all the way around the cube)
  
  // +Z "front" face
  vertex(-1, -1,  1, 0, 0);
  vertex( 1, -1,  1, 1, 0);
  vertex( 1,  1,  1, 1, 1);
  vertex(-1,  1,  1, 0, 1);

  // -Z "back" face
  vertex( 1, -1, -1, 0, 0);
  vertex(-1, -1, -1, 1, 0);
  vertex(-1,  1, -1, 1, 1);
  vertex( 1,  1, -1, 0, 1);

  // +Y "bottom" face
  vertex(-1,  1,  1, 0, 0);
  vertex( 1,  1,  1, 1, 0);
  vertex( 1,  1, -1, 1, 1);
  vertex(-1,  1, -1, 0, 1);

  // -Y "top" face
  vertex(-1, -1, -1, 0, 0);
  vertex( 1, -1, -1, 1, 0);
  vertex( 1, -1,  1, 1, 1);
  vertex(-1, -1,  1, 0, 1);

  // +X "right" face
  vertex( 1, -1,  1, 0, 0);
  vertex( 1, -1, -1, 1, 0);
  vertex( 1,  1, -1, 1, 1);
  vertex( 1,  1,  1, 0, 1);

  // -X "left" face
  vertex(-1, -1, -1, 0, 0);
  vertex(-1, -1,  1, 1, 0);
  vertex(-1,  1,  1, 1, 1);
  vertex(-1,  1, -1, 0, 1);

  endShape();
}

void mouseDragged() {
  float rate = 0.01;
  rotx += (pmouseY-mouseY) * rate;
  roty += (mouseX-pmouseX) * rate;
}
