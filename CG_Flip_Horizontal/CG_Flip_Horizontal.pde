/*
Autor: Hádamo da Silva Egito
Tarefa 02 de CG, flip vertical de imagem
*/
PImage img,imgFlip;
void setup()
{
  size(1210,350);
  img = loadImage("frutas.jpg");
  imgFlip = createImage(img.width,img.height,RGB);
  image(img,0,0);
  image(img,img.width,img.height);
  
}
void draw(){
  color cor;
  int i,tam = img.width *img.height,j=tam;
  //prepara pixels da img criada para modificação
  //o vetor pixels guarda todos os pixels da imagem
  //e possui tamanho = altura*largura
  imgFlip.loadPixels();
  for(i=0 ; i< img.width; ++i)
  {
    //copia o vetor de pixels da imagem original
    //no vetor de pixels da imagem criada na ordem inversa
    imgFlip.pixels[j]=img.pixels[i+tam+img.width];
    j--;
  }
  //atualiza pixels da img criada
  imgFlip.updatePixels();
  //carrega imagem criada ao lado da imagem original
  image(imgFlip,610,0);
  //linha vermelha entre as imagens
  fill(255,0,0);
  rect(600,0,10,350);
}
