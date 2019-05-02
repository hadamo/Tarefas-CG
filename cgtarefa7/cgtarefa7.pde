float i=0;
boolean rotate = false;
int noite = #0D023B; //azul escuro
int janelaAcesa = #FDFFA5; //marrom
int corPredio = #643403; //verde
//int corBG = #AAAAAA; //cinza
int corPorta = #4D3D03;
void setup()
{
  size(500,500,P3D);
}

void draw()
{
  background(noite);
  lights();
  rotateY(PI * ((float)mouseX/(360)));
   
  desenhaPredio();
  
  pushMatrix();
    fill(255);
    translate(width/5 -5,height/3,150);
    textSize(23);
    text("Clique e Arraste para girar!", mouseX, mouseY);
  popMatrix();
  
  desenhaJanelas();
  desenhaPortas();
  desenhaArvores();
  desenhaPiso();
}

void desenhaPredio()
{
  //predio
  pushMatrix();
  noStroke();
  //stroke(0);
  fill(corPredio);
  translate(width/2,height/2);
  box(100,150,50);
  popMatrix();
}

void desenhaJanelas()
{
  //desenha Janelas
  for(int i=-50; i <= 10; i+=30){
    //janela frontal esquerda
    fill(janelaAcesa);
    pushMatrix();
      translate(width/2 -25,height/2 +i,26);
      box(40,20,0);
    popMatrix();
    //janela frontal direita
    pushMatrix();
      translate(width/2 +25,height/2 +i,26);
      box(40,20,0);
    popMatrix();
    //janela lateral direita
    pushMatrix();
      translate(33+width/3,height/2 +i,0);
      box(0,20,40);
    popMatrix();
    //janela lateral esquerda
    pushMatrix();
      translate(135+width/3,height/2 +i,0);
      box(0,20,40);
    popMatrix();
  }
}

void desenhaPortas()
{
  //portas
  stroke(0);
  fill(corPorta);
  pushMatrix();
    translate(width/2 -10,height/2 +55,26);
    box(20,40,0);
  popMatrix();
  pushMatrix();
    translate(width/2 +10,height/2 +55,26);
    box(20,40,0);
  popMatrix();
  //maçanetas
  pushMatrix();
    translate(width/2 +5,height/2 +60,26);
    box(5,2,0);
  popMatrix();
  pushMatrix();
    translate(width/2 -5,height/2 +60,26);
    box(5,2,0);
  popMatrix();
}

void desenhaArvores()
{
 //arvores
  fill(corPorta);
  noStroke();
  ////troncos
  pushMatrix();
    translate(width/2 -160, height/2 +75,60);
    box(2,100,2);
  popMatrix();
   pushMatrix();
    translate(width/2 -205, height/2 +75);
    box(2,115,2);
  popMatrix();
  pushMatrix();
    translate(width/2 +300, height/2 +70,25);
    box(2,115,2);
  popMatrix();
  pushMatrix();
    translate(width/2 +39, height/2 +70,300);
    box(2,115,2);
  popMatrix();
  ////copas
  fill(0,100,0);
  pushMatrix();
    translate(width/2 -160, height/2 +25,60);
    sphere(20);
  popMatrix();
  fill(0,125,0);
  pushMatrix();
    translate(width/2 -205, height/2 );
    sphere(20);
  popMatrix();
  fill(0,140,0);
  pushMatrix();
    translate(width/2 +300, height/2  ,25 );
    sphere(20);
  popMatrix();
  fill(0,140,0);
  pushMatrix();
    translate(width/2 +39, height/2  ,300);
    sphere(20);
  popMatrix();
  ///fim arvores/ 
}

void desenhaPiso()
{
  //grama e asfalto
  noStroke();
  fill(0,100,0);
  //grama1
  pushMatrix();
    translate( width/2,75+height/2, 0);
    box(1000,1,300);
  popMatrix();
  //grama2
  pushMatrix();
    translate( width/2,75+height/2, 400);
    box(1000,1,300);
  popMatrix();
  //asfalto
  fill(0);
  pushMatrix();
    translate( width/2,75+height/2,200);
    box(1000,1,100);
  popMatrix();
  //faixa
  fill(#FFF708);
  pushMatrix();
    translate( width/2,74+height/2,200);
    box(1000,1,2);
  popMatrix();
  pushMatrix();
    translate( width/2,74+height/2,195);
    box(1000,1,2);
  popMatrix();
}
