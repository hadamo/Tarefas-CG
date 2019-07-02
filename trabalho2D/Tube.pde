public class Tube
{
  public PVector tuboTop,tuboBot;
  public PVector speed;
  float gap;
  float randomY,startPoint = width;
  color c = #41AD21;
  color c1 = #66DE43;
  boolean notReached = true;
  public Tube()
  {
     gap = 200;
     randomY = random(100,400); //gera random de 100 a 700
     tuboTop = new PVector(startPoint,0);      
     tuboBot = new PVector(startPoint,randomY+gap);
     speed = new PVector(-5,0);
     //  System.out.println("pos"+startPoint+" :"+tuboTop.x);
  }
  public void update()
  {
     // speed.add(levelSpeed,0);
      tuboTop.add(speed);
      tuboBot.add(speed);     
      collision();
      //if(points > 10 && (points/10)%2 == 0) levelSpeed-= 0.1;
  }
  
  public void collision()
  {
    float bx = b.pos.x +47;
    float bytop = b.pos.y;
    float bybot = b.pos.y+60;
    if(bx >= tuboTop.x)
    {
      if(this.notReached && (bytop <= ( this.tuboTop.y + this.randomY) || bybot >= this.tuboBot.y))
      {
          gameReady = false;
         // System.out.println("hit"+points);
          //fill(255,0,0);
          //if(bytop <= ( tuboTop.y + randomY)) ellipse(bx,bytop,30,30);
          //if(bybot >= tuboBot.y) ellipse(bx,bybot,30,30);
         // bgs.stop();
          hit.play();
          die.play();
      }
      if(bx >= (this.tuboTop.x+100) && this.notReached)
      {
        points++;
        notReached = false;
        //point.amp(0.3);
        point.play();
      }
    }
    
  }
 
  public void drawTubes()
  {
      strokeWeight(3);
      stroke(#203919);
      fill(c);
      rect(tuboTop.x,tuboTop.y,100,randomY);
      ///lines top
      strokeWeight(10);
      stroke(#CDFFBF);
      line(tuboTop.x+10,0,tuboTop.x+10,randomY-53);
      stroke(#467C36);
      line(tuboTop.x+92,0,tuboTop.x+92,randomY-53);
      strokeWeight(3);
      line(tuboTop.x+80,0,tuboTop.x+80,randomY-53);
      strokeWeight(18);
      stroke(#68BF4F);
      line(tuboTop.x+20,0,tuboTop.x+20,randomY-53);
      ///
      
      // tampa top
     strokeWeight(3);
      stroke(#203919);
      rect(tuboTop.x-5,randomY-50,110,50);
      //lines tampa top
      strokeWeight(8);
      stroke(#CDFFBF);
      line(tuboTop.x+8,randomY-43,tuboTop.x+8,randomY-7);
      stroke(#467C36);
      line(tuboTop.x+98,randomY-43,tuboTop.x+98,randomY-7);
      strokeWeight(3);
      line(tuboTop.x+88,randomY-43,tuboTop.x+88,randomY-7);
      strokeWeight(16);
      stroke(#68BF4F);
      line(tuboTop.x+18,randomY-42,tuboTop.x+18,randomY-8);
      strokeWeight(3);
      
      //tubo bot
      strokeWeight(3);
      stroke(#203919);
      fill(c);
      rect(tuboBot.x,tuboBot.y,100,680-randomY-gap);
      //line tubo bot
      strokeWeight(10);
      stroke(#CDFFBF);
      line(tuboBot.x+10,tuboBot.y+5,tuboBot.x+10,675);
      stroke(#467C36);
      line(tuboBot.x+92,tuboBot.y+5,tuboBot.x+92,675);
      strokeWeight(3);
      line(tuboBot.x+80,tuboBot.y+5,tuboBot.x+80,675);
      strokeWeight(18);
      stroke(#68BF4F);
      line(tuboBot.x+20,tuboBot.y+5,tuboBot.x+20,673);
      
      //tampa bot
      strokeWeight(3);
      stroke(#203919);
      rect(tuboBot.x-5,tuboBot.y,110,50);
      //linhas tampa bot
      strokeWeight(8);
      stroke(#CDFFBF);
      line(tuboBot.x+8,tuboBot.y+5,tuboBot.x+8,randomY+gap+44);
      stroke(#467C36);
      line(tuboBot.x+98,tuboBot.y+5,tuboBot.x+98,randomY+gap+44);
      strokeWeight(3);
      line(tuboBot.x+88,tuboBot.y+5,tuboBot.x+88,randomY+gap+44);
      strokeWeight(16);
      stroke(#68BF4F);
      line(tuboBot.x+18,tuboBot.y+5,tuboBot.x+18,randomY+gap+44);     
  }

}
