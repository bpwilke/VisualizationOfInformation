void setup()
{
  size(600,600);
  int test = 200;
}

void draw()
{
  stroke(0,0,0);
  for(int i=0;i<10;i++){
    strokeWeight(random(20));
    point(random(600), random(600));  
  }
  stroke(255,255,255);
  for(int i=0;i<10;i++){
    strokeWeight(random(20));
    point(random(600), random(600));  
  }
  
  fill(100,100,200);
  for(int x=0;x<10;x++){
  triangle(random(100), random(100), random(300), random(300), random(400), random(400));
  
  }
  
}
