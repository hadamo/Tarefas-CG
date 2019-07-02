/*
Trabalho avaliativo de computação gráfica
Hádamo da Silva Egito
*/
import processing.sound.*;
boolean gameReady = true, 
        start = false,
        fun = false,
        dead = false;
FlappyBird b;
PImage bg,bg2;
ArrayList<Tube> t;
Tube a, c;
int points=0,record=0,frames=0;
SoundFile hit,flap,point,fun1,die,bgs;
float levelSpeed = 0;
void setup()
{
  size(600,800);
  bg = loadImage("bg.png");
  bg2 = loadImage("bg2.png");
  b = new FlappyBird();
  t = new ArrayList<Tube>();
  t.add(new Tube());  
  hit = new SoundFile(this,"hit.mp3");
  flap = new SoundFile(this, "flap.mp3");
  point = new SoundFile(this, "point.mp3");
  die = new SoundFile(this, "die.mp3");
  bgs = new SoundFile(this,"OcarinaofTimeSariasSong8bit.mp3");
  bgs.loop();
}
void draw()
{
  //  da sentido de movimento no bg
  if((frameCount/10)%2==0) image(bg,0,0);
  if((frameCount/10)%2!=0) image(bg2,0,0);
  if(gameReady) //se nao esta na tela de morte
  {
        if(start) //se começou jogo
        {
            b.update();
            //cria novo tubo a cada 70 frames
            if( frames>0 && frames%80==0) 
                t.add(new Tube());
           for(Tube tu : t)
           {
               tu.drawTubes();
               tu.update();
           }
           if(t.size()>0)
               if( t.get(0).tuboTop.x < -100) t.remove(0);
           frames++;
        }
        fill(#F77F52);
        textSize(20);
        textAlign(CENTER, TOP);
        text("SCORE",40,30);
        fill(255);
        stroke(0);
        textSize(40);
        textAlign(CENTER,BOTTOM);
        text(points,30 ,100);
        b.drawBird();
   }else{
     if(dead)
     {
       gameOver();
       mouseOnButton();
     }
     else dieScene();
   }
}

public void dieScene()
{
    if(b.pos.y < 680){
      b.pos.add(0,15,0);
      for(Tube tu : t)
       {
           tu.drawTubes();
       }
      b.drawBird();
    }
    else dead = true;
}
void gameOver()
{
  t.clear();
  b.reset();
  start = false;
 if(points >= record) record = points;
 frames=0;
 strokeWeight(3);
 fill(#E3E59D);
 stroke(0);
 rect(width/4,height/3,300,240);
 fill(#FC7012);
 stroke(#52270A); 
 rect(width/4 + 100,height/2 +50,100,40);

 fill(#F77F52);
 noStroke();
 textSize(20);
 textAlign(CENTER, BOTTOM);
 text("SCORE",width/2,300);
  text("BEST",width/2,400);

 fill(255);
 stroke(0);
 textSize(40);
 text(points,width/2 ,350);
 text(record,width/2 ,450);
 textSize(20);
 text("RESTART",width/2,480);
 noStroke();
}
void keyPressed()
{
  if(key == ' ')
  {
    if(start)
    { 
      b.flap();  
      flap.play();
    }
    else
    {
     // bgs.loop();
      points = 0;
      dead = false;
      start = true;
      gameReady = true;
    } 
    
  }
  if(key == 's')
  {
    start = true;
    points = 0;
  }
  if(key == 'r')
  {
    b.reset();
    gameReady = true;
    start = false;
  }
  if(key == 'f') fun  = !fun;
}

void mouseClicked()
{
 // System.out.print(mouseX+" "+mouseY);
   if(mouseOnButton())
    {
      gameReady = true;
      points = 0;
    }
}

boolean mouseOnButton()
{
  if(!gameReady)
    if(pmouseX >=250 && pmouseX<=348)
        if(pmouseY>=451 && pmouseY<= 488)
        {
          cursor(HAND);
          return true;
        }
  cursor(ARROW);
  return false;
}
