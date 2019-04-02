/*
Tarefa de CG
Autor: Hádamo da Silva Egito
*/

void setup()
{
  size(600,600);
  background(#2F0C83);
  int i, 
      buildX=300, 
      buildY=60,
      y,
      buildWd=200,
      buildHg=360,
      winWd=70, 
      winHg=30,
      ang = 7;
  noStroke();
    //lua
  circle(80,80,80);
  fill(#2F0C83);
  circle(100,80,60);
  //estrelas
  fill(#ffffff);
  for(i=0;i<100;i++)
  {
    circle(random(width),random(350),3);
  }
  //predio
  fill(#BC74A8);
  rect(buildX, buildY, buildWd, buildHg, ang);
  noStroke();
  fill(255, 205, 3);
  y = buildY+10;
  //janelas
  for(i=0;i<3;++i)
  {
    rect(310,y,winWd,winHg,ang);
    rect(420,y,winWd,winHg,ang);
    y+=40;
  }
  fill(0,0,0);
    for(i=0;i<2;++i)
  {
    rect(310,y,winWd,winHg,ang);
    rect(420,y,winWd,winHg,ang);
    y+=40;
  }
  fill(255, 205, 3);
  rect(420,y-40,winWd,winHg,ang);
  fill(145, 148, 230);
  //portas
  stroke(0,0,0);
  rect(350,370,50,50);
  rect(400,370,50,50);
  //maçaaneta
  noFill();
  stroke(0,0,0);
  circle(394,395,10);
  circle(406,395,10);
  //arvore 1
  rect(50,350,0,70);
  fill(0,255,0);
  circle(50,350,50);
  //arvore 2
  rect(110,350,0,70);
  fill(0,255,0);
  circle(110,350,50);
  //grama
  noStroke();
  rect(0,416,250,600);
  //asfalto
  fill(0,0,0);
  rect(250,416,600,600);
  //telhado
  noStroke();
  fill(#7C3D2D);
  triangle(299,61,350,0,499,60);
  fill(0,0,0);
  //faixa
  noStroke();
  fill(#ffffff);
  int faixa=350;
  for(i=0;i<5;++i){
    rect(faixa,416,15,600);
    faixa+=30;
  }
  //poste
  fill(0,0,0);
  rect(560,350,5,950);
  fill(#FFEB05);
  circle(560,350,30);
}
