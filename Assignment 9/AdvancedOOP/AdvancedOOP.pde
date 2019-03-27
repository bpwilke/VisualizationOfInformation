import java.net.URLEncoder;  // needed this to handle URL encoding with the API

Galaga galaga; // declare our good ship Galaga!
Starfield starfield; // this is our object-oriented backgrouns starfield!

int galagaMoveRate = 6; // this is how much the galaga ship moves when pressing up, down, left, or right
int numberOfStars = 100; // set the number of stars in the background

Enemy enemy;  //
float[] currentEnemyBounding = new float[4]; // this is for holding the current bounding of the enemy ship

Laser laser; // my first laser
ArrayList<Laser> currentLasers = new ArrayList<Laser>();

ArrayList<GameObject> myGameObjects;  // all game objects render list

float introTextPosition = 800; // used for the introduction text

PFont font; // font for text display
private PImage explosion;
float explosionSize = 40;

AirQuality airQuality;


void setup()
{
  size(800, 800);
  PVector temp = new PVector();
  airQuality = new AirQuality(); // instantiate and get air qulity information

  // instantiate my array list of game objects
  myGameObjects = new ArrayList<GameObject>();

  // create 1 Galaga and add to our game objects
  galaga = new Galaga(new PVector(width/2, height - 150));
  myGameObjects.add(galaga);

  // create 1 Enemy and add to our game objects
  enemy = new Enemy(new PVector(200, 200), airQuality.getAQI());
  myGameObjects.add(enemy);

  font = createFont("Dialog-48.vlw", 20);
  textFont(font);

  explosion = loadImage("explosion.png");

  starfield = new Starfield(numberOfStars);
}

void draw()
{ 
  background(0);

  starfield.updateStarfield();

  currentEnemyBounding = enemy.getBounding(); // get current bounding

  //// loop through all laser beams and push up the screen, evaluate colisions, etc.
  for (Laser a : currentLasers)
  {
    a.pewpew();
    PVector pos = a.getPosition();

    if (pos.x >= currentEnemyBounding[0] && pos.x <= currentEnemyBounding[2])
    {
      if (pos.y >= currentEnemyBounding[1] && pos.y <= currentEnemyBounding[3])
      {
        if (a.isActive())
        {
          enemy.reduceHealth();
          a.setActive(false);
          a.setVisible(false);
        }
      }
    }
  }

  drawIntroText(airQuality);

  // loop through all objects and render
  for (GameObject a : myGameObjects)
  {
    a.render();
  }
  if(enemy.getIsDead())
  {
   explode(enemy.getPosition()); 
  }
  enemy.drawHealth();
  enemy.wallCollissionAndAnimate();

  // KEYBOARD EVENT HANDLERS ////////////////////////////////////////////////////////////////////////////////////
  if (keyPressed == true && key == 'w')
  {
    galaga.moveUp(galagaMoveRate);
  }
  if (keyPressed == true && key == 'a')
  { 
    galaga.moveLeft(galagaMoveRate);
  }
  if (keyPressed == true && key == 's')
  {
    galaga.moveDown(galagaMoveRate);
  }
  if (keyPressed == true && key == 'd')
  {
    galaga.moveRight(galagaMoveRate);
  }
  if (keyPressed == true && key == 'm')  // fires laser
  { 
    PVector temp = galaga.getPosition();
    laser = new Laser(new PVector(temp.x, temp.y));
    laser.setVisible(true);
    currentLasers.add(laser);
    myGameObjects.add(laser);
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}
