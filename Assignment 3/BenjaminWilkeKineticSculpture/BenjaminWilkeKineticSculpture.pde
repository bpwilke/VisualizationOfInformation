int canvasSize = 1500;

float circleAngle = 0;
float circleVelocity = .01;

float squareSize = 100;


float alienWavingSpeed = 0.01;
float alienWavingAngle = 0;
boolean alienWavingPositive = true;

float squaresAngle = 0;
float squaresVelocity = 0.001;



void settings()
{

 size(canvasSize,canvasSize);
}


//////////////////////////////////////////////////////////////////////////////////////////
void circlewithhand()
{
  ellipseMode(CENTER);
  stroke(0);
  fill(255);
  ellipse(0,0, 100, 100);
  fill(200);
  line(0, 0, 50, 0);
}
//////////////////////////////////////////////////////////////////////////////////////////
void circlewithhand2()
{
  ellipseMode(CENTER);
  stroke(0);
  fill(240);
  ellipse(0,0, 100, 100);
  fill(200);
  pushMatrix();
    fill(250);
    ellipse(0,25,50,50);
    ellipse(0,-25,50,50);
  popMatrix();
}
//////////////////////////////////////////////////////////////////////////////////////////
void linesscroll(float verticalpos)
{
  stroke(random(255),random(255),random(255));
  verticalpos = verticalpos + random(100);
  line(0, verticalpos, width, verticalpos);
}
//////////////////////////////////////////////////////////////////////////////////////////
void squares(float sizesq){
  rectMode(CENTER);
  fill(255);
  stroke(0,100,0);
  for(int x = 50; x < 800; x += 100){
    rect(x,50,sizesq,sizesq);
    rect(x,50,sizesq/2,sizesq/2);
  }
}
//////////////////////////////////////////////////////////////////////////////////////////


void drawSquares(float squareSize)
{
  //fill(200);
  noFill();
  rectMode(CENTER);
  rect(-40, 40, squareSize, squareSize);
  rect(40, 40, squareSize, squareSize);
  rect(-40, -40, squareSize, squareSize);
  rect(40, -40, squareSize, squareSize);
}



//////////////////////////////////////////////////////////////////////////////////////////

void draw()
{
  background(255); 
  
  circleAngle += circleVelocity;
  squaresAngle += squaresVelocity;
  
  if(circleAngle > 2 * PI)
  {
    circleAngle = 0;
  }
  
  if(squaresAngle > 2 * PI)
  {
    squaresAngle = 0;
  }
  
  
  
  // circles with hands elements
  for(int x = 50; x < 800; x += 100)
  {
  pushMatrix();
    translate(x, 400);
    rotate(circleAngle);
    //circlewithhand2();
  popMatrix();
  
  pushMatrix();
    translate(x, 500);
    rotate(-circleAngle * 2);
    //circlewithhand();
  popMatrix();
  }
  // linescroll element
  for(int x = 0; x < 100; x++){
  //linesscroll(250);
  }
  // squares element
  
  if(squareSize < 0)
  {
    squareSize = 100;
  }
  //squares(squareSize);
  squareSize -= 1;
  //////////////////////////////////////////////////////////////////////////////////////////

  pushMatrix();
    translate(750,750);
  pushMatrix();
    for(int x = 0; x < 400; x += 10)
    {

    translate(x, 0);
    drawSquares(50);
    rotate(squaresAngle);
    }
  popMatrix();
  popMatrix();
  
  println(squaresAngle);



}
  
  
