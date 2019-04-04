/*
Autor: Hadamo Egito
Tarefa 04: Mudar imagem para escala de cinza.
formula para calcular escala de cinza obtida em:
  https://en.wikipedia.org/wiki/Grayscale#Converting_color_to_grayscale
  https://capivararex.wordpress.com/2016/04/17/dip02-conversao-rgb-para-escala-de-cinza/
*/
PImage img;
void setup(){
  size(1400,540);
  background(255,255,255);
  
  img = loadImage("temple.jpg");
  image(img,0,0);
}
void draw(){
  color c;
  int i,size=img.width*img.height;
  float gray;
  img.loadPixels();
  for(i=0; i<size; i++)
  {
    c = img.pixels[i];
    gray = grayscale(c);
    img.pixels[i]= color(gray);
  }
  img.updatePixels();
  image(img,700,0);
}
float grayscale(color c)
{
  /* Para imagens em espaço de cor RGB, a alteração para Escala de Cinza
  pode ser realizada aplicando estes pesos para os componentes r,g,b
  0.2126*r + 0.7152*g + 0.0722*b
  */
  float r,g,b;
  r = red(c); g = green(c); b = blue(c);
  //return 0.3*r + 0.59*g + 0.11*b;
  return 0.2126*r + 0.7152*g + 0.0722*b;
}
