class Star extends GameObject
{
  private float size;
  
  // default constructor
  public Star()
  {
     size = random(1,4); 
  }
  
  protected void renderObject()
  {
    ellipse(0,0,size,size);
  }
}
