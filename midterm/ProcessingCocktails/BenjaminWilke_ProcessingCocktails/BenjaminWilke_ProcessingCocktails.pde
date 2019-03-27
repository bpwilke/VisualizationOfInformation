Cocktail[] cocktails;  // array to hold my cocktails
PFont smallFont; // font for small text

int currentCocktailSelection = 0;

int scene = 3; // variable to control vcarious screens: 1 = categories, 2 = loader, 3 = dashboard

float loadingRotate = 0; // variable for loader animation rotate
float loadingPercentage = 0; // loading percentage

Cocktail cocktail1;
Cocktail cocktail2;
Cocktail cocktail3;
Cocktail cocktail4;
Cocktail cocktail5;
Cocktail cocktail6;
Cocktail cocktail7;
Cocktail cocktail8;
Cocktail cocktail9;
Cocktail cocktail10;
Cocktail cocktail11;
Cocktail cocktail12;
Cocktail cocktail13;
Cocktail cocktail14;
Cocktail cocktail15;

void setup()
{
  size(1200, 600);


  cocktails = new Cocktail[15]; // initialize cocktails array 

  smallFont = createFont("Futura-Medium-17.vlw", 17);
  textFont(smallFont);
  fill(126);

  //cocktail1 = getCocktailByID(13621);
  cocktail1 = getRandomCocktail();
  cocktails[0] = cocktail1;
  loadingPercentage = (100 / 15) * 1;
  text("Loaded: " + loadingPercentage, 20, 20);

  //cocktail2 = getCocktailByID(16202);
  cocktail2 = getRandomCocktail();
  cocktails[1] = cocktail2;
  loadingPercentage = (100 / 15) * 2;

  //cocktail3 = getCocktailByID(11001);
  cocktail3 = getRandomCocktail();
  cocktails[2] = cocktail3;
  loadingPercentage = (100 / 15) * 3;

  //cocktail4 = getCocktailByID(11003);
  cocktail4 = getRandomCocktail();
  cocktails[3] = cocktail4;
  loadingPercentage = (100 / 15) * 4;

  //cocktail5 = getCocktailByID(11007);
  cocktail5 = getRandomCocktail();
  cocktails[4] = cocktail5;
  loadingPercentage = (100 / 15) * 5;

  //cocktail6 = getCocktailByID(11008);
  cocktail6 = getRandomCocktail();
  cocktails[5] = cocktail6;
  loadingPercentage = (100 / 15) * 6;

  //cocktail7 = getCocktailByID(16178);
  cocktail7 = getRandomCocktail();
  cocktails[6] = cocktail7;
  loadingPercentage = (100 / 15) * 7;

  //cocktail8 = getCocktailByID(17829);
  cocktail8 = getRandomCocktail();
  cocktails[7] = cocktail8;
  loadingPercentage = (100 / 15) * 8;

  //cocktail9 = getCocktailByID(13214);
  cocktail9 = getRandomCocktail();
  cocktails[8] = cocktail9;
  loadingPercentage = (100 / 15) * 9;

  //cocktail10 = getCocktailByID(17114);
  cocktail10 = getRandomCocktail();
  cocktails[9] = cocktail10;
  loadingPercentage = (100 / 15) * 10;

  //cocktail11 = getCocktailByID(17828);
  cocktail11 = getRandomCocktail();
  cocktails[10] = cocktail11;
  loadingPercentage = (100 / 15) * 11;

  //cocktail12 = getCocktailByID(14065);
  cocktail12 = getRandomCocktail();
  cocktails[11] = cocktail12;
  loadingPercentage = (100 / 15) * 12;

  //cocktail13 = getCocktailByID(17227);
  cocktail13 = getRandomCocktail();
  cocktails[12] = cocktail13;
  loadingPercentage = (100 / 15) * 13;

  //cocktail14 = getCocktailByID(17241);
  cocktail14 = getRandomCocktail();
  cocktails[13] = cocktail14;
  loadingPercentage = (100 / 15) * 14;

  //cocktail15 = getCocktailByID(12562);
  cocktail15 = getRandomCocktail();
  cocktails[14] = cocktail15;
  loadingPercentage = (100 / 15) * 15;
}


void draw()
{
  if (scene == 1)
  {
  } else if (scene == 2)
  {
    //background(235,235,235);
    //loadingScreen(600,300, loadingPercentage);
    //if(loadingPercentage >= 100){loadingPercentage = 0; scene = 3;}; // reset loading percentage and change to dashboard scene
  } else {
    background(235, 235, 235);
    drawCocktailSelector(cocktails); // draw cocktail selections, pass in cocktails array
    drawInstructions(currentCocktailSelection); // display instructions
    drawIngredients(currentCocktailSelection); // display ingredients.
    drawMeasurements(currentCocktailSelection); // display measurements
    showCocktailRatios(currentCocktailSelection); // display ratios
    drawGlass(currentCocktailSelection); // display glass
    drawIngredientsIcon(cocktails);
    showCocktailThumb(mouseX, mouseY); // show coktail thumb if hovering
    showIngredientsThumb(mouseX, mouseY, currentCocktailSelection); // show ingredient thumb if hovering
  }

  // MOUSE EVENT HANDLERS
  if (mousePressed == true && (scene != 1 || scene != 2))
  {
    if (mouseX < 300)
    {
      currentCocktailSelection = getCocktailSelector(mouseX, mouseY);
    }
  }
  // KEYBOARD EVENT HANDLERS
  if (keyPressed == true && key == 'n')
  {
    scene = 1;
  }
}
