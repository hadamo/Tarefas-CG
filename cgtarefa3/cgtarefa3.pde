PImage img,red,green,blue,negative;
void setup() {
  size(1590, 600);
  int imgX=500,imgY=300;
  img = loadImage("frutas.jpg");
  image(img,0,0);
  int i; color c; float r,g,b;
  img.loadPixels();
  for(i=0;i<img.width*img.height;i++)
  {
    c = img.pixels[i];
    r = red(c); g = green(c); b = blue(c);
    r = 255 - r;
    c = color(r,g,b);
    img.pixels[i] =c;
  }
  img.updatePixels();
  image(img,530,0);
  img = loadImage("frutas.jpg");
  img.loadPixels();
  for(i=0;i<img.width*img.height;i++)
  {
    c = img.pixels[i];
    r = red(c); g = green(c); b = blue(c);
    g = 255 - g;
    c = color(r,g,b);
    img.pixels[i] =c;
  }
  img.updatePixels();
  image(img,0,300);
  img = loadImage("frutas.jpg");
  img.loadPixels();
  for(i=0;i<img.width*img.height;i++)
  {
    c = img.pixels[i];
    r = red(c); g = green(c); b = blue(c);
    b = 255 - b;
    c = color(r,g,b);
    img.pixels[i] =c;
  }
  img.updatePixels();
  image(img,530,300);
  img = loadImage("frutas.jpg");
  img.loadPixels();
  for(i=0;i<img.width*img.height;i++)
  {
    c = img.pixels[i];
    r = red(c); g = green(c); b = blue(c);
    b = 255 - b; g = 255 - g; r = 255 - r;
    c = color(r,g,b);
    img.pixels[i] =c;
  }
  img.updatePixels();
  image(img,1060,0);
  textSize(25);
  fill(0, 102, 153);
  text("Original", 1100, 360);
  text("Vermelho", 1240, 360);
  text("Negativo", 1380, 360);
  text("Verde", 1100, 420);
  text("Azul", 1240, 420);
   
}
