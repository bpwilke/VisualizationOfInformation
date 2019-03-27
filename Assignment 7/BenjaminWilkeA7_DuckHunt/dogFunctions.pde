void dogRetrieve(float dogRiseFromBush)
{
   if(dogRiseFromBush < 435){
     dogRiseFromBush = 435;
   }
   background(115,176,248);
   text("Time Remaining: " + timeRemaining / 60, 10, 20);
   text("Total Shots: " + totalShotsFired, 10, 42);
   text("You WIN!", 390, 280);
   text("Press -n- to return to home screen", 390, 320);
   
   pushMatrix();
     translate(400, dogRiseFromBush);
     image(dogRetrieve, -dogRetrieve.width/2, -dogRetrieve.height/2);
   popMatrix();
   
   image(bushes, 0, 0);    // add this here, so the dog is behind the bushes
   image(tree, 150, 240); // same with this tree
}

void dogLaughing(float dogRiseFromBush)
{ 
  if(dogRiseFromBush < 435){
     dogRiseFromBush = 435;
  }
  background(250,181,212);
  text("You LOSE!", 390, 280);
  text("Press -n- to return to home screen", 390, 320);
  
  pushMatrix();
  translate(400, dogRiseFromBush);
  if(!flap)
    {
    image(dogLaugh1, -dogLaugh1.width/2, -dogLaugh1.height/2);
    } else {
    image(dogLaugh2, -dogLaugh2.width/2, -dogLaugh2.height/2);
    } 
  popMatrix();
   
   image(bushes, 0, 0);    // add this here, so the dog is behind the bushes
   image(tree, 150, 240); // same with this tree
}
