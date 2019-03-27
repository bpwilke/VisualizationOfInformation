class Starfield
{
  private float[] xPositions;
  private float[] yPositions;
  private float[] speeds;
  private int numberOfStars;

  public Starfield(int numberOfStars)
  {
    this.numberOfStars = numberOfStars;

    // set array length for stars
    xPositions = new float[numberOfStars];
    yPositions = new float[numberOfStars];
    speeds = new float[numberOfStars];

    // randomize initial position and speed of each star
    for (int i = 0; i < numberOfStars; i++)
    {
      xPositions[i] = random(0, width);
      yPositions[i] = random(0, height);
      speeds[i] = random(1, 7);
    }
  }

  public void updateStarfield()
  {
    stroke(255);
    for(int j = 0; j < numberOfStars; j++)
    {
      point(xPositions[j], yPositions[j]);
      
      yPositions[j] = yPositions[j] + speeds[j];
      
      if(yPositions[j] > height)
      {
        yPositions[j] = 0; // this will reset the star at the top of the screen
      }  
  }
}

}
