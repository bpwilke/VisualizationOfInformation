class Laser extends GameObject
{

  private Boolean active; // this is used to denote whether the laser is active so it deactivates upon enemy hit..otherwise the 
  // ship would take damage as the laser moved through the ship

  Laser()
  {
  }


  // constructor
  Laser(PVector initialPosition)
  {
    super(initialPosition);
    velocity = 7;
    visible = true;
    active = true;
    icon = loadImage("laser.png");
  }


  protected void renderObject()
  {
    image(icon, 0, 0, 20, 20);
  }

  public void pewpew()
  {
    position.y = position.y - velocity;
    if (position.y <= 0)
    {
      position.y = 0;
      visible = false;
    }
  }
  
  public Boolean isActive()
  {
     return active; 
  }
  
  public void setActive(Boolean state)
  {
     active = state; 
  }
}
