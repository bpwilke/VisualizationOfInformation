public void drawCocktailSelector(Cocktail[] cocktails) // loops through cocktail array to display cocktail names
{
  fill(126); // restore fill color for default text
  for (int i = 0; i < cocktails.length; i++)
  {
    text(cocktails[i].getCocktailName(), 5, 20 + (20 * i));
  }
  line(300, 0, 300, 600);
}

public int getCocktailSelector(int x, int y) // this function takes the mouseX + mouseY and returns a selction based on bounding.
{
  int selection = 0;
  if (x < 300)
  { 
    if (y < 20)
    {
      selection = 1;
    } else if ((y >= 20) && (y < 40)) {
      selection = 2;
    } else if (y >= 40 && y < 60) {
      selection = 3;
    } else if (y >= 60 && y < 80) {
      selection = 4;
    } else if (y >= 80 && y < 100) {
      selection = 5;
    } else if (y >= 100 && y < 120) {
      selection = 6;
    } else if (y >= 120 && y < 140) {
      selection = 7;
    } else if (y >= 140 && y < 160) {
      selection = 8;
    } else if (y >= 160 && y < 180) {
      selection = 9;
    } else if (y >= 180 && y < 200) {
      selection = 10;
    } else if (y >= 200 && y < 220) {
      selection = 11;
    } else if (y >= 220 && y < 240) {
      selection = 12;
    } else if (y >= 240 && y < 260) {
      selection = 13;
    } else if (y >= 260 && y < 280) {
      selection = 14;
    } else if (y >= 280 && y < 300) {
      selection = 15;
    }
  }
  //println(selection);
  return selection;
  
}

void drawGlass(int selection) // this function draws the glass
{
  fill(50);
  text("Glass", 310, 300);
  fill(126);
  if (selection > 0)
  {
    text(cocktails[selection - 1].getGlass(), 310, 320);
  }
  line(300, 280, 700, 280);
}




void drawInstructions(int selection)   // this function takes a cocktail selection and displays the instructions
{ 
  fill(50);
  text("Instructions", 310, 20);
  fill(126);
  if (selection > 0)
  {
    String tempText = cocktails[selection - 1].getInstructions();
    int arrayLength = ceil(tempText.length() / 105);
    arrayLength++;

    int arrayLengthInt = int(arrayLength);
    String[] textArray = new String[arrayLengthInt];

    textArray = stringChopper(tempText, 105);

    for (int i = 0; i < arrayLength; i++)
    {
      text(textArray[i], 310, 40 + (i * 20));
    }
  }
  line(300, 100, 1200, 100);
}

void drawIngredients(int selection) // this function draws the ingredients
{
  fill(50);
  text("Ingredients and Measurements", 310, 120);
  fill(126);
  if (selection > 0)
  {
    text(cocktails[selection-1].getIngredient1(), 310, 140);
    text(cocktails[selection-1].getIngredient2(), 310, 160);
    text(cocktails[selection-1].getIngredient3(), 310, 180);
    text(cocktails[selection-1].getIngredient4(), 310, 200);
    text(cocktails[selection-1].getIngredient5(), 310, 220);
    text(cocktails[selection-1].getIngredient6(), 310, 240);
    text(cocktails[selection-1].getIngredient7(), 310, 260);
  }
  line(700, 100, 700, 600);
}

void drawMeasurements(int selection) // this function draws the measurement
{
  if (selection > 0)
  {
    text(cocktails[selection - 1].getMeasurement1(), 550, 140);
    text(cocktails[selection - 1].getMeasurement2(), 550, 160);
    text(cocktails[selection - 1].getMeasurement3(), 550, 180);
    text(cocktails[selection - 1].getMeasurement4(), 550, 200);
    text(cocktails[selection - 1].getMeasurement5(), 550, 220);
    text(cocktails[selection - 1].getMeasurement6(), 550, 240);
    text(cocktails[selection - 1].getMeasurement7(), 550, 260);
  }
}

void showCocktailThumb(int x, int y) // this function takes the mouseX and mouseY and displays the cocktail thumn if in the right bounding
{ 
  if (x < 200)
  { 
    if (y < 20)
    {
      image(cocktail1.displayThumb(), x + 50, y + 10, 200, 200);
    } else if ((y >= 20) && (y < 40)) {
      image(cocktail2.displayThumb(), x + 50, y + 10, 200, 200);
    } else if (y >= 40 && y < 60) {
      image(cocktail3.displayThumb(), x + 50, y + 15, 200, 200);
    } else if (y >= 60 && y < 80) {
      image(cocktail4.displayThumb(), x + 50, y + 15, 200, 200);
    } else if (y >= 80 && y < 100) {
      image(cocktail5.displayThumb(), x + 50, y + 15, 200, 200);
    } else if (y >= 100 && y < 120) {
      image(cocktail6.displayThumb(), x + 50, y + 20, 200, 200); //
    } else if (y >= 120 && y < 140) {
      image(cocktail7.displayThumb(), x + 50, y + 20, 200, 200); //
    } else if (y >= 140 && y < 160) {
      image(cocktail8.displayThumb(), x + 50, y + 20, 200, 200); //
    } else if (y >= 160 && y < 180) {
      image(cocktail9.displayThumb(), x + 50, y + 20, 200, 200); //
    } else if (y >= 180 && y < 200) {
      image(cocktail10.displayThumb(), x + 50, y + 20, 200, 200); //
    } else if (y >= 200 && y < 220) {
      image(cocktail11.displayThumb(), x + 50, y + 20, 200, 200); //
    } else if (y >= 220 && y < 240) {
      image(cocktail12.displayThumb(), x + 50, y + 20, 200, 200); //
    } else if (y >= 240 && y < 260) {
      image(cocktail13.displayThumb(), x + 50, y + 20, 200, 200); //
    } else if (y >= 260 && y < 280) {
      image(cocktail14.displayThumb(), x + 50, y + 20, 200, 200); //
    } else if (y >= 280 && y < 300) {
      image(cocktail15.displayThumb(), x + 50, y + 20, 200, 200); //
    }
  }
}

void showIngredientsThumb(int x, int y, int currentCocktailSelection) // this function takes the mouseX and mouse Y and displays the ingredients thumb if in the correct bound
{ 
  if (currentCocktailSelection > 0)
  {
    if ((x > 300 && x < 700) && y > 100)
    { 
      if ((y >= 120 && y < 140) && (cocktails[currentCocktailSelection - 1].getTotalIngredients() >= 1))
      {
        image(cocktails[currentCocktailSelection - 1].getIngredientThumb1(), x + 50, y - 25, 200, 200);
      } else if ((y >= 140) && (y < 160) && (cocktails[currentCocktailSelection - 1].getTotalIngredients() >= 2)) {
        image(cocktails[currentCocktailSelection - 1].getIngredientThumb2(), x + 50, y - 25, 200, 200);
      } else if ((y >= 160 && y < 180) && (cocktails[currentCocktailSelection - 1].getTotalIngredients() >= 3)) {
        image(cocktails[currentCocktailSelection - 1].getIngredientThumb3(), x + 50, y - 25, 200, 200);
      } else if ((y >= 180 && y < 200) && (cocktails[currentCocktailSelection - 1].getTotalIngredients() >= 4)) {
        image(cocktails[currentCocktailSelection - 1].getIngredientThumb4(), x + 50, y - 25, 200, 200);
      } else if ((y >= 200 && y < 220) && (cocktails[currentCocktailSelection - 1].getTotalIngredients() >= 5)) {
        image(cocktails[currentCocktailSelection - 1].getIngredientThumb5(), x + 50, y - 25, 200, 200);
      } else if ((y >= 220 && y < 240) && (cocktails[currentCocktailSelection - 1].getTotalIngredients() >= 6)) {
        image(cocktails[currentCocktailSelection - 1].getIngredientThumb6(), x + 50, y - 25, 200, 200);
      } else if ((y >= 240 && y < 260) && (cocktails[currentCocktailSelection - 1].getTotalIngredients() >= 7)) {
        image(cocktails[currentCocktailSelection - 1].getIngredientThumb7(), x + 50, y - 25, 200, 200);
      }
    }
  }
}


// this function draws ratios of ingredients from standardized ounces

void showCocktailRatios(int currentCocktailSelection)
{
  int heightMultiplier = 50;
  int ingredientsTotal;
  ArrayList<Ingredient> workingIngredients;
  int index = 0;

  if (currentCocktailSelection > 0)
  {
    Cocktail workingCocktail = cocktails[currentCocktailSelection - 1];
    workingIngredients = workingCocktail.getIngredients();
    ingredientsTotal = workingCocktail.getTotalIngredients();

    float[] ingredientHeights = new float[ingredientsTotal];
    String[] ingredientNames = new String[ingredientsTotal];

    for (Ingredient ing : workingIngredients)
    {
      if (ing.canBeConvertedToOunces == true)
      {
        ingredientHeights[index] = ing.getStandardizedOz() * heightMultiplier;
        ingredientNames[index] = ing.getIngredientName();
      }
      index++;
    }

    float previousHeight = 100;

    for (int j = 0; j < ingredientsTotal; j++)
    {    

      switch(j)  /// add some color to the ratio blocks 
      {  
      case 0: 
        fill(200, 0, 0);
        break;
      case 1: 
        fill(0, 200, 0);
        break;
      case 2: 
        fill(0, 0, 200);
        break;
      case 3: 
        fill(200, 0, 200);
        break;
      case 4: 
        fill(200, 200, 0);
        break;
      case 5: 
        fill(0, 200, 200);
        break;
      case 6: 
        fill(255, 100, 20);
        break;
      case 7: 
        fill(100, 255, 100);
        break;
      }


      rect(700, previousHeight, 500, ingredientHeights[j]);
      previousHeight = previousHeight + ingredientHeights[j];

      if (ingredientHeights[j] > 0)
      {  
        fill(255);
        text(ingredientNames[j], 715, previousHeight - ingredientHeights[j] / 2);
      }
    }

    fill(126);  // reset fill to background color.
  }
}

// ################## NEW FUNCTION FOR SECOND ATTEMPT AT MIDTERM GRADE #########################

void drawIngredientsIcon(Cocktail[] cocktails)
{
  int numIngredients = 0;
  ellipseMode(CENTER);

  for (int i = 0; i < cocktails.length; i++)
  {
    numIngredients = cocktails[i].getTotalIngredients();

    switch(numIngredients)
    {
    case 1:
      fill(62, 66, 17);
      break;
    case 2:
      fill(98, 104, 27);
      break;
    case 3:
      fill(136, 145, 37);
      break;
    case 4:
      fill(193, 206, 51);
      break;
    case 5:
      fill(228, 244, 51);
      break;
    case 6:
      fill(148, 244, 51);
      break;
    case 7:
      fill(53, 255, 87);
      break;
    }

    ellipse(290, 10+(i*20), 15, 15);
  }
  //#### DRAW LEGEND
  fill(50);
  text("Drink Ingredients", 10, 555);
  fill(62, 66, 17);
  ellipse(35, 572, 15, 15);
  fill(98, 104, 27);
  ellipse(75, 572, 15, 15);
  fill(136, 145, 37);
  ellipse(115, 572, 15, 15);
  fill(193, 206, 51);
  ellipse(155, 572, 15, 15);
  fill(228, 244, 51);
  ellipse(195, 572, 15, 15);
  
  fill(148, 244, 51);
  ellipse(235, 572, 15, 15);
  
  fill(53, 255, 87);
  ellipse(275, 572, 15, 15);

  fill(126); // restore fill color for default text

  rectMode(CENTER);
  text("1", 10, 580);
  text("2", 50, 580);
  text("3", 90, 580);
  text("4", 130, 580);
  text("5", 170, 580);
  text("6", 210, 580);
  text("7", 250, 580);
  rectMode(CORNER);
  fill(126); // restore fill color for default text
}
