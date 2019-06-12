
import shiffman.box2d.*;
public class GameObject
{
  public PVector pos;
  
  public GameObject(int x0, int y0, int z0)
  {
    this.pos = new PVector(x0,y0,z0);
  }
  
  public float getX()
  {
    return pos.x;
  }
  
  public float getY()
  {
    return pos.y;
  }
  
  public float getZ()
  {
    return pos.z;
  }
  
  public boolean collide(PVector Target)
  {
    boolean collision = false;
    
    return collision;
  }
  /**
    move o objeto com velocidade indicada e distancia?
  */
  public void move(float speed, int movex, int movey, int movez)
  {
     pos.add(movex * speed, movey * speed, movez * speed);
  }
}
