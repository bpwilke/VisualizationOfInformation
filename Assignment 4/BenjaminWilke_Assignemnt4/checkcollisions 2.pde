void checkColissions(int i)
{
  if(x[i] > width - radius[i])
  {
    x[i] = width - radius[i];
    speedX[i] = -speedX[i];
  }
  
  if(x[i] < radius[i])
  {
    x[i] = radius[i];
    speedX[i] = -speedX[i];
  }
  
  if(y[i] > height - radius[i])
  {
    y[i] = height - radius[i];
    speedY[i] = -speedY[i];
    speedY[i] *= damping[i];
    speedX[i] *= friction[i];  
}
  
  if(y[i] < radius[i])
  {
   y[i] = radius[i];
   speedY[i] = -speedY[i]; 
  }
   
  
  
}
