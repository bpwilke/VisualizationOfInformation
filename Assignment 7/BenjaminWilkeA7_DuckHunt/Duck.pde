class Duck
{
  //private String duckColor;  // not yet implemented as the animation logic would need to be built for 9 more images!
  private PImage duckImageR1;
  private PImage duckImageR2;
  private PImage duckImageR3;
  private PImage duckImageL1;
  private PImage duckImageL2;
  private PImage duckImageL3;
  private PImage duckImageRDead1;
  private PImage duckImageRDead2;
  private PImage duckImageRShot;
  private PVector position;
  private float velocity;
  private float deathVelocity;
  private Boolean isDead;
  private Boolean isShot;
  private Boolean movingRight;
  private int holdShotKeyframe;
  
  // Constructor ///////////////
  public Duck()
  {
      duckImageR1 = loadImage("r_red_0.png");
      duckImageR2 = loadImage("r_red_1.png");
      duckImageR3 = loadImage("r_red_2.png");
      duckImageL1 = loadImage("l_red_0.png");
      duckImageL2 = loadImage("l_red_1.png");
      duckImageL3 = loadImage("l_red_2.png");
      duckImageRDead1 = loadImage("r_dead_0.png");
      duckImageRDead2 = loadImage("r_dead_1.png");
      duckImageRShot = loadImage("r_shot_0.png");
      position = new PVector(0,0);
      velocity = 0; 
      deathVelocity = 0;
      isDead = false;
      isShot = false;
      holdShotKeyframe = 0;
  }
  // Methods ///////////
  public void drawDuck(Boolean flap)
  {
    pushMatrix();
     translate(position.x, position.y);
     
     if(isShot && holdShotKeyframe < 11)   // briefly show shot image, (NOT SO brief now with holdShotKeyFrame!)
     {
       image(duckImageRShot, -duckImageRShot.width/2, -duckImageRShot.height/2);
       //isShot = false;  // reset, so that the dead image can show falling from the sky
       holdShotKeyframe++;
     }
     // this is the main block controlling the animation behavior of the ducks                  
     if(isDead){   
       if(!flap)
              {
                image(duckImageRDead1, -duckImageRDead1.width/2, -duckImageRDead1.height/2);
               } else {
                image(duckImageRDead2, -duckImageRDead2.width/2, -duckImageRDead2.height/2);
              }
     } else {
       
            if(movingRight)
            {
              if(flapInt == 1)
              {
                image(duckImageR1, -duckImageR1.width/2, -duckImageR1.height/2);
               } else if(flapInt == 2) {
                image(duckImageR2, -duckImageR2.width/2, -duckImageR2.height/2);
              } else {
                image(duckImageR3, -duckImageR3.width/2, -duckImageR3.height/2);
              }
            } else {
              if(flapInt ==1)
              {
                image(duckImageL1, -duckImageL1.width/2, -duckImageL1.height/2);
                } else if(flapInt == 2) {
                image(duckImageL2, -duckImageL2.width/2, -duckImageL2.height/2);
              } else {
                image(duckImageL3, -duckImageL3.width/2, -duckImageL3.height/2);
              }
            }
     }
    popMatrix();  
  }
  
  public void updateIsDead(Boolean dead)
  {
    isDead = dead;    
  }
  
  public void updateIsShot(Boolean shot)
  {
    isShot = shot;    
  }
  
  public void updateDeathVelocity(float newVelocity)
  {
    deathVelocity = newVelocity;
  }
  
  public void updateVelocity(float newVelocity)
  {
    if(newVelocity > 0)
    {
      movingRight = true;
    } else {
      movingRight = false;
    }
    velocity = newVelocity;
  }
  
  public float getVelocity()
  {
   return velocity; 
  }
  
  public void updatePosition(PVector newPosition)
  {
    position = newPosition;
  }
  
  public PVector getPosition() // this returns the centered X and Y position of the duck
  {
   return position; 
  }
  
  public void updateHoldShotKeyframeToZero(){
    holdShotKeyframe = 0;
  }
  
  public float[] getBounding() // this returns an array of topLX, topLY, bottomRX, and bottomRY of the bounding box of the duck
  {
    PVector currentPos = getPosition();
    float[] boundingDims = new float[4];
    
    boundingDims[0] = currentPos.x - duckImageR1.width/2; // topLX
    boundingDims[1] = currentPos.y - duckImageR1.height/2; // topLY
    boundingDims[2] = currentPos.x + duckImageR1.width/2; // bottomRX
    boundingDims[3] = currentPos.y + duckImageR1.height/2; // bottomRY
        
    return boundingDims;
  }
  
  //public void changeColor(String newColor)
  //{
  // duckColor = newColor;
  //}
  
  public void move() // checks to see if the duck is dead, if not move normal, if so then die
  {
    if(isDead == false)
    {
      position.x += velocity;
    } else if(isShot && holdShotKeyframe < 11){
     // do nothing for 9 frames 
    } else {
      position.y += deathVelocity;
    }
  }
  
  public Boolean isOffScreen(){  // this checks to see if the duck is off the bottom of the screen, or "officially dead" vs. "only shot"
    if(position.y >= 600){
      return true;
    } else {
      return false;
    }
  }


}
