public class FlappyBird 
{
  public PVector pos;
  public PVector speed;
  public PVector fallSpeed;
  public PVector jumpSpeed;
  public boolean isFalling;
  public PImage sprite;
  
  public FlappyBird()
  {
      pos = new PVector(100,height/2);
      isFalling = true;
      speed = new PVector(0,0);
      jumpSpeed = new PVector(0,-15);
      fallSpeed = new PVector(0,0.5);
      // 61x47 .
      sprite = loadImage("bird.png");
  }
   public void drawBird()
  {
     image(sprite,pos.x,pos.y);
  }
  public void flap()
  {
    if(speed.y > -30)speed.add(jumpSpeed);
   // System.out.println("jump "+speed.y);
  }
  public void update()
  {
    speed.add(fallSpeed);
    pos.add(speed);    
    if(pos.y >= 680) gameReady=false;
    //System.out.println("fall "+speed.y+" pos: "+pos.y);
 }
  public void reset()
  {
    pos = new PVector(100,height/2);
    speed = new PVector(0,0);
    frames = 0;
  }
}
