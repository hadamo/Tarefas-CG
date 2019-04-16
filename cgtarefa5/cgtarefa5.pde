/*
Hádamo da Silva Egito
Rotação Direta
*/
PImage original,rotacao; //520*520
void setup(){
  size(1040,520);
  original = loadImage("pecgo.jpg");
  rotacao = createImage(520,520,RGB);
  image(original,0,0);
  color c;
  int x,y;
  float xR, yR,angulo = radians(17);
  for(x=0;x < 520; ++x)
  {
    for(y=0 ; y<520 ; ++y)
    {
      c = original.get(x,y);
      xR = x * cos(angulo) + y * sin(angulo);
      yR = y * cos(angulo) - x * sin(angulo);
      rotacao.set(int(xR),int(yR),c);
    }
  }
  image(rotacao,520,0);
}
void draw(){}
