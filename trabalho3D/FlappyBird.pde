public class FlappyBird 
{
  public PVector pos;
  public PVector speed;
  public PVector fallSpeed;
  public PVector jumpSpeed;
  public boolean isFalling;
  public float size;
  public FlappyBird()
  {
      pos = new PVector(0,0,0);
      isFalling = true;
      speed = new PVector(0,0,0);
      jumpSpeed = new PVector(0,-15,0);
      fallSpeed = new PVector(0,0.4,0);
      size=25;
  }
 
  public void flap()
  {
    speed.add(jumpSpeed);
    System.out.println("jump "+speed.y);
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
  public void drawBird()
  {
    pushMatrix();
      translate(0,this.pos.y,0);
      //corpo do bixo
      // pushMatrix();
       noStroke();
       fill(#FFEA00);
       sphere(size);
    popMatrix();
  }

  
}
