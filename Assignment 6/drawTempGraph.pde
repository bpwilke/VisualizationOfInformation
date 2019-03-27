void drawTempGraph(float[] temps)
{
 
  final int graphSpace = CANVAS_WIDTH / temps.length;
  
  noFill();
  
  stroke(random(255), random(255), random(255));
  
  beginShape();
  
  curveVertex(0, temps[0]); // set a redundant first point
  
  for(int j = 0; j < temps.length; j++)
  {
    curveVertex(j * graphSpace, temps[j] * (temps[j] * .05));
  }
  
  curveVertex(temps.length * graphSpace, temps[temps.length - 1]); // set a redundant last point
  
    
  endShape();
  
  
}
