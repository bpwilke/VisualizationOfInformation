ArrayList<Duck> ducks;  // array list to hold my ducks (quack)
PImage tree;  // tree
PImage bushes; // foreground bushes
PImage dogRetrieve;
PImage dogLaugh1;
PImage dogLaugh2;
PFont font;
int totalShotsFired = 0;  // increments when mouse is clicked
int flappyFrames = 0;  // counter for flapping
int flappyRate = 60; // how quickly to flap
Boolean flap = false;  // is flap in keyframe 1 or 2
int flapInt = 0; // this is used to control 3 keyframe version of the birds
int timeRemaining = 60 * 15;  // set to 30 seconds (* 60 f/s)
int scene = 0;  // scene selector to control draw() 
int ducksDead = 0; // used to count the number of ducks that have died AND fallen off the screen
int totalDucks = 5; // for now hardtyped because i initialized 5 ducks
Boolean lostTimeElapsed = false;  // used to determing once all the ducks have fallen off the screen whether it was because they were all shot or time elapsed
float dogRiseFromBush = 450;

void settings()
{
  size(800,600); 
}

void setup()
{ 
  bushes = loadImage("bushes.png");
  tree = loadImage("tree.png");
  dogRetrieve = loadImage("dog_retrieve_0.png");
  dogLaugh1 = loadImage("dog_lose_0.png");
  dogLaugh2 = loadImage("dog_lose_1.png");
  
  font = createFont("Dialog-48.vlw", 20);
  textFont(font);
  
  ducks = new ArrayList<Duck>();
  
  Duck firstDuck = new Duck();
  firstDuck.updatePosition(new PVector(600,200));
  firstDuck.updateVelocity(-5);
  firstDuck.updateDeathVelocity(5);
  ducks.add(firstDuck);
  
  Duck secondDuck = new Duck();
  secondDuck.updatePosition(new PVector(400,100));
  secondDuck.updateVelocity(-7);
  secondDuck.updateDeathVelocity(8);
  ducks.add(secondDuck);
  
  Duck thirdDuck = new Duck();
  thirdDuck.updatePosition(new PVector(200,50));
  thirdDuck.updateVelocity(2);
  thirdDuck.updateDeathVelocity(7);
  ducks.add(thirdDuck);
  
  Duck fourthDuck = new Duck();
  fourthDuck.updatePosition(new PVector(100,300));
  fourthDuck.updateVelocity(-3);
  fourthDuck.updateDeathVelocity(3);
  ducks.add(fourthDuck);
  
  Duck fifthDuck = new Duck();
  fifthDuck.updatePosition(new PVector(500,450));
  fifthDuck.updateVelocity(-3);
  fifthDuck.updateDeathVelocity(2);
  ducks.add(fifthDuck);
}

void draw()
{ 
  if(scene == 0){    // opening sequence
    openingSequence();
  }
  else if(scene == 1)   // main gameplay
  {
  background(115,176,248);
  image(bushes, 0, 1);
  image(tree, 150, 240);
  
  for(Duck d : ducks)
  {  
    checkCollisions(d);
    d.move();
    d.drawDuck(flap);
    
    image(bushes, 0, 0);    // add this here, so the ducks fall behind the bushes
    image(tree, 150, 240); // same with this tree
    updateFlappy();
    
    if(d.isOffScreen()){ducksDead++;}
  }
    text("Time Remaining: " + timeRemaining / 60, 10, 20);
    text("Total Shots: " + totalShotsFired, 10, 42);
    
    if((ducksDead == totalDucks) && (lostTimeElapsed == false)){scene = 2;}
    if((ducksDead == totalDucks) && (lostTimeElapsed == true)){scene = 3;}
       
    timeRemaining--;
    if(timeRemaining <= 0)  // you lose because the time elapsed, kill all ducks out of air
    {
     timeRemaining = 0; 
     lostTimeElapsed = true;
     killAllDucks();
    }
  } else if(scene == 2)   // win sequence
  {
       
    dogRetrieve(dogRiseFromBush);
    dogRiseFromBush = dogRiseFromBush - .5;
        
  } else if(scene == 3){  // lose sequence
    updateFlappy();  // need to keep updating this to switch between dog laughing keyframes 
    dogLaughing(dogRiseFromBush);
    dogRiseFromBush = dogRiseFromBush - .5;
  }
  
  ducksDead = 0;  // reset this so as to re-evaluate total ducks next iteration of draw()
  
  // KEYBOARD EVENT HANDLERS
  if(keyPressed == true && key == 'a')
  {
    scene = 1;
  }
  if(keyPressed == true && key == 'n')
  { 
    newGame();
  }
}

// Mouse EVENT HANDLERS (called outside of draw() as to use mouseClicked vs. mousePressed)
void mouseClicked()
  { 
    totalShotsFired++;
    bangbang(mouseX, mouseY);
    shotsFired(mouseX, mouseY);
    println(totalShotsFired);
  }
