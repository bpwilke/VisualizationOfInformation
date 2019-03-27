float birthRate = .4;

float particleCountCurrent = 0;
int particleCount = 500;

float[] x = new float[particleCount];
float[] y = new float[particleCount];
float[] radius = new float[particleCount];

int[] sideCount = new int[particleCount];

float[] speedX = new float[particleCount];
float[] speedY = new float[particleCount];
float[] gravity = new float[particleCount];
float[] damping = new float[particleCount];
float[] friction = new float[particleCount];


PImage[] face = new PImage[particleCount];
float[] transparency = new float[particleCount];
float[] transparencyReduceRate = new float[particleCount];


int randomizer;

float ballRotate = 0;
float ballRotateRate = .05;

PImage brady;
PImage goff;
PImage bill;
PImage pats;
PImage rams;
PImage SBlogo;
PImage ball;


void setup()
{
 size(1000,1000);
 
 brady = loadImage("bradyT.png");
 goff = loadImage("goffT.png");
 bill = loadImage("billT.png");
 pats = loadImage("patsT.png");
 rams = loadImage("ramslogoT.png");
 SBlogo = loadImage("SB52T.png");
 ball = loadImage("ballT.png");
  
 for(int i = 0; i < particleCount; i++)
 {
  
 x[i] = width / 2;
 y[i] = 50;
 
 transparency[i] = 255; // initialize to full transparency
 transparencyReduceRate[i] = random(.1, 1);
 
 speedX[i] = random(-1.2, 1.2);
 speedY[i] = random(.5, 2);
 radius[i] = 25;
 
 sideCount[i] = int(random(3, 10));
 
 
 gravity[i] = .09;
 damping[i] = .77;
 friction[i] = .77;
   
 randomizer = int(random(1, 100));
  
 if(randomizer <= 30)
 {
   face[i] = brady;
 }
  else if(randomizer > 30 && randomizer <= 60)
  {
   face[i] = goff;
  }
  else if(randomizer > 60 && randomizer <= 90)
  {
   face[i] = bill;
  }
  else if(randomizer > 90 && randomizer <= 94)
  {
   face[i] = pats;
  }
  else
  {
   face[i] = rams;  
  }
  
 }
}

void draw()
{
   
  background(255);
  //fill(255, 100);
  noStroke();
  //rect(0,0, width, height);
  
  image(SBlogo, 40, 20);
  
  pushMatrix();
    translate(120,325);        
    rotate(ballRotate);
    imageMode(CENTER);
    image(ball, 0, 0);
  popMatrix();
  
  imageMode(CORNER);

  for(int i = 0; i < particleCountCurrent; i++)
  {

  showface(face[i], x[i], y[i], transparency[i]);
  
  //polygon(x[i], y[i], radius[i], sideCount[i], 2, color(random(255), random(255), random(255)));
  
  x[i] += speedX[i];
  speedY[i] += gravity[i];
  y[i] += speedY[i];
  
  
  transparency[i] -= transparencyReduceRate[i];
  
  checkColissions(i);
  }
  
  if(particleCountCurrent < particleCount - birthRate)
  {
    particleCountCurrent += birthRate;
  }
  
  ballRotate += ballRotateRate;

  
}
