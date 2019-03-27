// this is an animation helper to determine which version of the key frame to show
// i have one for 2 keyframe sprites and one for 3 keyframe sprites
void updateFlappy()
{
  flappyFrames++;
  
  if((flappyFrames > 0) && (flappyFrames < flappyRate / 2))  // sets a 2 keyframe version for animation
  {
    flap = false;
  } else {
    flap = true; 
  }
  
  if((flappyFrames > 0) && (flappyFrames < flappyRate * .33))  // sets a 3 keyframe version for animation
  {
    flapInt = 1;
  } else if((flappyFrames >= flappyRate * .33) && (flappyFrames < flappyRate * .66)) {
    flapInt = 2;
  } else {
    flapInt = 3;
  }
  
  
  if(flappyFrames >= flappyRate)
  {
    flappyFrames = 0; 
  }
}
