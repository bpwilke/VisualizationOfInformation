class Galaga extends GameObject
{
  Galaga(PVector initialPosition)
  {
    super(initialPosition);
    icon = loadImage("galaga.png");
  }

  protected void renderObject()
  {
    image(icon, 0, 0, 75, 79);
  }
 
}
