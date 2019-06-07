int wing=0;
float angle = radians(0);
PImage flappy,bg;
void setup()
{
  size(1000,1000,OPENGL);
  flappy = loadImage("flappy.png");
  bg = loadImage("bg1.png");
  flappy.resize(100,100);
  bg.resize(1000,500);
}
void draw()
{
   background(#C6C6B2);
 //  image(bg,0,0);
   //imagem 2d
   pushMatrix();
     translate(250,500,20);
     image(flappy,0,0);
   popMatrix();
   
   //muda origem pra centro da tela
   translate(width/2,height/2,0);
   //rotaciona eixo Z ao redor da nova origem no centro
   rotateY(PI * ((float)mouseX/(360)));
     //canos
   pushMatrix();
     translate(-300,100,40);
     fill(#10A231);
    // rotateX(75);
     drawCylinder(300,60,300);
   popMatrix();
   //corpo do bixo
   pushMatrix();
   noStroke();
   fill(#FFEA00);
   sphere(50);
   popMatrix();
   
   //olho direito
   pushMatrix();
     translate(-20,-10,25);
     fill(255);
     sphere(30);
   popMatrix();
   //pupila direita
   pushMatrix();
     translate(-35,-10,32);
     fill(0);
     sphere(18);
   popMatrix();
   //olho esquerdo
   pushMatrix();
     translate(-20,-10,-25);
     fill(255);
     sphere(30);
   popMatrix();
   //pupila esquerda
     pushMatrix();
     translate(-35,-10,-32);
     fill(0);
     sphere(18);
   popMatrix();
   //bico sup
   pushMatrix();
     translate(-40,20,0);
     fill(#FF4800);
     box(40,15,80);
   popMatrix();
   //bico meio
   pushMatrix();
     translate(-40,25,0);
     fill(0);
     box(41,5,90);
   popMatrix();
   //bico inf
   pushMatrix();
     translate(-35,35,0);
     fill(#FF4800);
     box(40,15,80);
   popMatrix();
   //rotacao asa
   pushMatrix();
     //scale(-1,1);
     rotateZ(wing);
     //asa dir
     pushMatrix();
       translate(50,-10,-40);
       fill(#FFFABC);
       box(60,30,10);
     popMatrix();
     //asa esq
     pushMatrix();
       translate(50,-10,40);
       fill(#FFFABC);
       box(60,30,10);
     popMatrix();
   popMatrix();
   
 
   
}
void keyPressed()
{
  if(wing < 0) wing = 0;
  else wing = -45;
}
PShape createCan(float r, float h, int detail) {
  textureMode(NORMAL);
  PShape sh = createShape();
  sh.beginShape(QUAD_STRIP);
  sh.noStroke();
  for (int i = 0; i <= detail; i++) {
    float angle = TWO_PI / detail;
    float x = sin(i * angle);
    float z = cos(i * angle);
    float u = float(i) / detail;
    sh.normal(x, 0, z);
    sh.vertex(x * r, -h/2, z * r, u, 0);
    sh.vertex(x * r, +h/2, z * r, u, 1);
  }
  sh.endShape();
  return sh;
}

void drawCylinder( int sides, float r, float h)
{
    float angle =TWO_PI;
    float halfHeight = h / 2;
 // draw top of the tube
    beginShape();
    for (int i = 0; i < sides; i++) {
        float x = cos( radians( i * angle ) );
        float z = sin( radians( i * angle ) );
        vertex( x*r, -halfHeight , z*r );
        vertex( x,  halfHeight , z);

    }
    
    // draw top of the tube
    beginShape();
    for (int i = 0; i < sides; i++) {
        float x = cos( radians( i * angle ) );
        float z = sin( radians( i * angle ) );
        vertex( x*r +10,  -halfHeight +20,z*r +10);
        vertex( x+10, halfHeight +20,z+10);
    } 
    endShape(CLOSE);
 
    // draw sides
    beginShape(QUAD_STRIP);
    for (int i = 0; i < sides + 1; i++) {
        float x = cos( radians( i * angle ) ) * r;
        float z = sin( radians( i * angle ) ) * r;
        vertex( x, halfHeight,z);
        vertex( x, -halfHeight,z);    
    }
    
    endShape(CLOSE);
 
}

/*
pushMatrix();
   
popMatrix();
*/
