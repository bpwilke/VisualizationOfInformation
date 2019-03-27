// this creates a bulls-eye graphic on the screen where X and Y are passed
void bangbang(float posX, float posY)
{
  noFill();
  stroke(35,35,35);
  strokeWeight(3);
  ellipseMode(CENTER);  // Set ellipseMode to CENTER
  pushMatrix();
    translate(posX, posY);
    strokeWeight(2);
    ellipse(0,0,10,10);
    strokeWeight(1);
    ellipse(0,0,26,26);
    line(-35,0,35,0);
    line(0,-30,0,30);
  popMatrix();
}
