/*
Hádamo da Silva Egito
Rotação Reversa com Interpolação
*/
PImage original,rotacaoDireta,rotIntp; //520*520
void setup(){
  size(1040,1040);
  original = loadImage("pecgo.jpg");
  rotacaoDireta = createImage(520,520,RGB);
  rotIntp = createImage(520,520,RGB);
  image(original,0,0);
  color corOri;
  int x,y,xRINT,yRINT;
  float xR, yR,angulo = radians(17);
  //Rotação Direta
  for(x=0;x < 520; ++x)
  {
    for(y=0 ; y<520 ; ++y)
    {
      corOri = original.get(x,y);
      xR = x * cos(angulo) + y * sin(angulo);
      yR = y * cos(angulo) - x * sin(angulo);
      rotacaoDireta.set(int(xR),int(yR),corOri);
    }
  }
  image(rotacaoDireta,520,0);
  //////////
  //Rotação com interpolação
  float r,g,b, deltaCol, deltaLin;
  color A,B,C,D,Px; //pixels vizinhos
  angulo = radians(-17);
  for(x=0;x < 520; ++x)
  {
    for(y=0 ; y<520 ; ++y)
    {
      //c = original.get(x,y);
      //posicao do pixel rotacionado na imagem resultado
      xR = x * cos(angulo) + y * sin(angulo);
      yR = y * cos(angulo) - x * sin(angulo);
      //parte inteira desses pixels
      xRINT = int(xR); yRINT = int(yR);
      //deltaCol = endereço fracionário da coluna de xR - endereço inteiro da coluna xR  ( para o pixel “A”)
      //deltaLin = endereço fracionário da linha de yR - endereço inteiro da linha yR (para o pixel “A”)
      deltaCol = xR - xRINT;
      deltaLin = yR - yRINT;
      //Seleciona Pixels vizinhos ao pixel rotacionado
      A = get(xRINT, yRINT);
      B = get(xRINT +1, yRINT );
      C = get(xRINT , yRINT +1);
      D = get(xRINT +1, yRINT +1);
      //salva cor para o pixel rotacionado de acordo com os pixels vizinhos
      Px = interpolacao(A,B,C,D,deltaCol,deltaLin);
      rotIntp.set(x, y, Px);
    }
  }  
  image(rotIntp,235,520);
///////////////////////////
//Legenda
  textSize(25);
  fill(#8E4204);
  stroke(#482F19);
  text("Original", 100, 30);
  text("Rotação Direta 17º", 700, 30);
  text("Rotação com Interpolação 17º", 320, 545);
} 

//funções de interpolação
color interpolacao(color A,color B, color C, color D, float deltaCol, float deltaLin)
{
  float controlAB,controlCD,r,g,b;
  //faz interpolação para os 3 canais e cria uma cor nova com os resultados.
  controlAB = controle(deltaCol,red(A),red(B));
  controlCD = controle(deltaCol,red(C),red(D));
  r = deltaLin * (controlCD - controlAB) + controlAB;
  controlAB = controle(deltaCol,green(A),green(B));
  controlCD = controle(deltaCol,green(C),green(D));
  g = deltaLin * (controlCD - controlAB) + controlAB;
  controlAB = controle(deltaCol,blue(A),blue(B));
  controlCD = controle(deltaCol,blue(C),blue(D));
  b = deltaLin * (controlCD - controlAB) + controlAB;
  return color(r,g,b);
}
float controle(float deltaCol, float ch1, float ch2)
{
  // faz interpolação num mesmo canal para dois pixels
  return deltaCol * (ch2 - ch1) + ch1;
}
  
