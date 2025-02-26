void polygon(float x, float y, float radius, float sides, float strokeWt, color strokeColor)
{
  float theta = 0;
  strokeWeight(strokeWt);
  float rotAmount = TWO_PI/sides;
  stroke(strokeColor);
  noFill();
  beginShape();
  float x2=0, y2=0;
  for(int i = 0; i < sides; i ++)
  {
    x2 = x + cos(theta)*radius*2;
    y2 = y + sin(theta)*radius*2;
    vertex(x2, y2);
    theta += rotAmount;
  }
  endShape(CLOSE);
}
