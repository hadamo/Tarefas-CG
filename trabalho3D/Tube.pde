public class Tube
{
  public PVector tuboTop,tuboBot;
  public PVector speedTop,speedBot;
  float gap;
  float randomY;
  float startPoint = 2000;
  boolean notReached = true;
  public Tube()
  {
     gap = 300;
     randomY = random(100,400); //gera random de 100 a 700
     tuboTop = new PVector(startPoint,0,0);      
     tuboBot = new PVector(startPoint,randomY+gap);
     speedTop = new PVector(-10,0);
     speedBot = new PVector(-10,0);
     //  System.out.println("pos"+startPoint+" :"+tuboTop.x);
  }
  public void update()
  {
      //speed.add(levelSpeed,0);
      if(!notReached)
      {
        speedTop.add(0,-10,0);
        speedBot.add(0,10,0);
      }
        tuboTop.add(speedTop);
        tuboBot.add(speedBot); 
        collision();
      //if(points > 10 && (points/10)%2 == 0) levelSpeed-= 0.1;
  }
    public void collision()
  {
    float bx = b.pos.x;
    float bytop = b.pos.y - b.size/2;
    float bybot = b.pos.y + b.size/2;
    if(bx >= tuboTop.x)
    {
      if(bytop <= ( tuboTop.y + (randomY+ 200)/2) || bybot >= gap+tuboBot.y -400)
      {
         // gameReady = false;
         System.out.println("hit"+points);
          //fill(255,0,0);
         if(bytop <= ( tuboTop.y + randomY)) ellipse(bx,bytop,30,30);
         if(bybot >= tuboBot.y) ellipse(bx,bybot,30,30);
         // bgs.stop();
          //hit.play();
          //die.play();
      }
      if(bx >= (tuboTop.x+100) && notReached)
      {
        points++;
        notReached = false;
        point.amp(0.2);
        point.play();
      }
    } 
  }
  public void drawTubes()
  {
   pushMatrix();
   translate(0,-200);
     pushMatrix();
       translate(tuboTop.x,tuboTop.y,tuboTop.z);
       fill(#10A231);
       box(60,randomY+200,60);
     popMatrix(); 
     pushMatrix();
       translate(tuboBot.x,gap+tuboBot.y,tuboBot.z);
       fill(#10A231);
       box(60,800,60);
     popMatrix(); 
   popMatrix();
  }
  

}
