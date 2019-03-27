void checkCollisions(Duck d)
{
  PVector currentPosition = d.getPosition();
     if(currentPosition.x < 0)
     {
       currentPosition.x = 0;
       d.updateVelocity(-d.getVelocity()); 
     }
     
     if(currentPosition.x > width)
     {
       currentPosition.x = width;
       d.updateVelocity(-d.getVelocity()); 
     }
}   
