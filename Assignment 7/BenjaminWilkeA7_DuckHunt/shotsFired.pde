void shotsFired(float shotX, float shotY)
{
  println("Shots Fired! Mouse Pos X: " + shotX + " || Mouse Pos Y: " + shotY);
  for(Duck d : ducks)
  {  
    println(d.getBounding());
    float[] bounding = d.getBounding();
    if((shotX < bounding[2] && shotY < bounding[3]) && (shotX > bounding[0] && shotY > bounding[1]))  // evaluates whether the duck was shot
    {
      d.updateIsDead(true);
      d.updateIsShot(true);
    }
  }
}
