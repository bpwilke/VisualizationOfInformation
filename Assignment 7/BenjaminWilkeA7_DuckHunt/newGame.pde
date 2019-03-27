void newGame()
{ 
  ducksDead = 0;   
  totalShotsFired = 0;
  timeRemaining = 60 * 15;  // set to 30 seconds (* 60 f/s)
  scene = 0;
  dogRiseFromBush = 450;
  lostTimeElapsed = false;
  
  for(Duck d : ducks){
    d.updateHoldShotKeyframeToZero();
    d.updatePosition(new PVector(random(900),random(20,450)));
    d.isDead = false;
    float velocity = random(-10,10);
    if(velocity == 0)     // a fix to make sure the velocity isn't set to ZERO...thus literally would have a "sitting duck" LOL
    {
      velocity = 2;
    }
    d.updateVelocity(velocity);
    d.updateDeathVelocity(random(3,6));
  }
}
