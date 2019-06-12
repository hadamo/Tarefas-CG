public class FlappyBird 
{
  public GameObject bird;
  public int offsetX, offsetY, offsetZ;
  public float fallSpeed;
  public float jumpSpeed;
  public boolean falling;
  
  public FlappyBird()
  {
      bird = new GameObject(0,0,0);
      falling = true;
      fallSpeed = 3;
      jumpSpeed = 5;
  }
  
  public void drawBird()
  {
    pushMatrix();
      //corpo do bixo
       pushMatrix();
       noStroke();
       fill(#FFEA00);
       sphere(50);
       popMatrix();
       
       //olho direito
       pushMatrix();
         translate(20,-10 +bird.getY(),25);
         fill(255);
         sphere(30);
       popMatrix();
       //pupila direita
       pushMatrix();
         translate(35,-10 +bird.getY() ,32);
         fill(0);
         sphere(18);
       popMatrix();
       //olho esquerdo
       pushMatrix();
         translate(20,-10 +bird.getY(),-25);
         fill(255);
         sphere(30);
       popMatrix();
       //pupila esquerda
         pushMatrix();
         translate(35,-10 +bird.getY(),-32);
         fill(0);
         sphere(18);
       popMatrix();
       //bico sup
       pushMatrix();
         translate(40,20 +bird.getY(),0);
         fill(#FF4800);
         box(40,15,80);
       popMatrix();
       //bico meio
       pushMatrix();
         translate(40,25 +bird.getY(),0);
         fill(0);
         box(41,5,90);
       popMatrix();
       //bico inf
       pushMatrix();
         translate(35,35 +bird.getY(),0);
         fill(#FF4800);
         box(40,15,80);
       popMatrix();
       //rotacao asa
       pushMatrix();
         //scale(-1,1);
        // rotateZ(wing);
         //asa dir
         pushMatrix();
           translate(-50,-10,-40);
           fill(#FFFABC);
           box(60,30,10);
         popMatrix();
         //asa esq
         pushMatrix();
           translate(-50,-10,40);
           fill(#FFFABC);
           box(60,30,10);
         popMatrix();
       popMatrix();
    popMatrix();
  }
  
  public void jump()
  {
    bird.move(jumpSpeed,0,1,0);
  }
  
  public void fall()
  {
    bird.move(fallSpeed,0,1,0);
  }
  
}
