abstract class GameObject
{
  protected PVector position;
  private float sizeX;
  private float sizeY;
  protected PImage icon;
  protected float velocity;
  protected Boolean visible;

  public GameObject()
  {
  }

  public GameObject(PVector initialPosition)
  {
    position = initialPosition;
    visible = true;
  }

  // this is my example of polymorphism
  protected abstract void renderObject();  // this must be defined in all subclasses, thus "what" is rendered can be different

  public void render()
  {
    imageMode(CENTER);
    pushMatrix();
    translate(position.x, position.y);
    if (visible)
    {
      //image(icon, 0, 0, sizeX, sizeY);
      renderObject();  // tgis calls renderObject() as defined in the sub-class
    }
    popMatrix();
  }

  public void setIcon(PImage icon)
  {
    this.icon = icon;
  }

  public void setPosition(PVector newPosition)
  {
    position = newPosition;
  }

  public PVector getPosition()
  {
    return position;
  }

  public void setVisible(Boolean state)
  {
    visible = state;
  }

  // the following are to move the object on the screen by an amount passed into the function
  public void moveRight(int amt)
  {
    position.x += amt;
  }

  public void moveLeft(int amt)
  {
    position.x -= amt;
  }

  public void moveUp(int amt)
  {
    position.y -= amt;
  }

  public void moveDown(int amt)
  {
    position.y += amt;
  }
}
