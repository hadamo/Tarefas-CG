/*
Autor: Hádamo da Silva Egito
Tarefa 02 de CG, flip vertical de imagem
*/
PImage img,imgFlip;
void setup()
{
  size(1210,350);
  img = loadImage("frutas.jpg");
  image(img,0,0);  
}
void draw(){
  //variaveis tipo color que guardam os valores r,g,b do pixel.
  color corCima,corBaixo;
  int x,y,i = img.height-1;
  //prepara pixels da img criada para modificação
  //o vetor pixels guarda todos os pixels da imagem
  //e possui tamanho = altura*largura
  img.loadPixels();
  for(y=0; y< floor(img.height/2);y++)
  {
    for(x=0; x<img.width;++x)
    {
      //função get, retorna o pixel naquela posição da matriz
      corCima = get(x,y);
      corBaixo = get(x,i);
      //invertem-se as linhas de pixels da imagem
      img.pixels[y*img.width+x] = corBaixo;
      img.pixels[i*img.width+x] = corCima;
    }
    i--;
  }
  //atualiza pixels da img criada
  img.updatePixels();
  //carrega imagem invertida ao lado da imagem original
  image(img,610,0);
  //linha vermelha entre as imagens
  fill(255,0,0);
  rect(600,-10,10,360);
}
