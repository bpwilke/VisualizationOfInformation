class Enemy extends GameObject
{
  private float health;
  private float healthReduceRate;
  private Boolean isDead = false; 


  Enemy(PVector initialPosition, float health)
  {
    super(initialPosition);
    this.health = health;
    healthReduceRate = 2;
    velocity = 3;
    icon = loadImage("enemy.png"); // initialize on super
  }

  protected void renderObject()
  {
    image(icon, 0, 0, 75, 79);
  }

  void drawHealth()  // this function draws health circle and numerical display
  {
    stroke(244, 238, 66);
    noFill();
    ellipseMode(CENTER);
    pushMatrix();
    translate(position.x, position.y);
    ellipse(0, 0, health * 2, health * 2);
    if (!isDead)
    {        
      font = createFont("Dialog-48.vlw", 15);
      text(int(health), 35, 45);
    }
    popMatrix();
  }

  public Boolean getIsDead()
  {
    return isDead;
  }

  void wallCollissionAndAnimate()  // this function will move the enemy automatically. 
  {

    position.x += velocity;

    if (position.x > (width - 35))
    {
      velocity = -velocity;
    }

    if (position.x < 35)
    {
      velocity = -velocity;
    }
  }

  void reduceHealth()
  {
    health = health - healthReduceRate; 
    if (health <= 0)
    {
      health = 0;
      isDead = true;
      visible = false;
    }
  }

  public float[] getBounding()
  {
    PVector currentPos = getPosition();
    float[] boundingDims = new float[4];

    boundingDims[0] = currentPos.x - 36; // topLX
    boundingDims[1] = currentPos.y - 37; // topLY
    boundingDims[2] = currentPos.x + 36; // bottomRX
    boundingDims[3] = currentPos.y + 37; // bottomRY

    return boundingDims;
  }
}
