void loadingScreen(int posX, int posY, float percentageComplete)
{
  noFill();
  
   pushMatrix();
     translate(posX,posY);
     rotate(loadingRotate);
     ellipse(0,0,50,50);
     line(0,0,0,25);
   popMatrix();
  
  loadingRotate = loadingRotate + .1;
  
  if(loadingRotate >= 360)
  {
    loadingRotate = 0;
  }
  pushMatrix();
    fill(0);
    translate(posX + 30, posY + 10);
    text("Loading..." + "(" + percentageComplete + "%)", 0, 0);
  popMatrix();
  
}
