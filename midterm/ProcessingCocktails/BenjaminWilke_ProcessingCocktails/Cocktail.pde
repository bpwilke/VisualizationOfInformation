class Cocktail
{
  private String id; // drink ID
  private String name;
  private String thumbURL;
  private PImage thumbImage;
  private String instructions;
  private String glass;
  private int ingredientsTotal = 0; // set a variable to control iterating through ingredients
  
  ArrayList<Ingredient> ingredients = new ArrayList<Ingredient>();  // array list to hold my ingredients
  
  private Ingredient ingredient1;
  private Ingredient ingredient2;
  private Ingredient ingredient3;
  private Ingredient ingredient4;
  private Ingredient ingredient5;
  private Ingredient ingredient6;
  private Ingredient ingredient7;
  
  private Boolean measurementsInOunces; // flag to determing if the measurements for the cocktail are all in ounces
  
  // fully loaded constructor!
  private Cocktail(String _id, String _name, String _thumbURL, String _instructions, String _glass, String _ingredient1, String _ingredient2,
    String _ingredient3, String _ingredient4, String _ingredient5, String _ingredient6, String _ingredient7, String _measure1,
    String _measure2, String _measure3, String _measure4, String _measure5, String _measure6, String _measure7)
    {
        id = _id;
        name = _name;
        thumbURL = _thumbURL;
        thumbImage = loadImage(_thumbURL);
        instructions = _instructions;
        glass = _glass;
        
        if(_ingredient1.length() > 0)
        {
        ingredient1 = new Ingredient(_ingredient1, _measure1);
        ingredient1.setStandardizedOz(_measure1);
        ingredientsTotal++;
        ingredients.add(ingredient1);
        }
        if(_ingredient2.length() > 0)
        {
        ingredient2 = new Ingredient(_ingredient2, _measure2);
        ingredient2.setStandardizedOz(_measure2);
        ingredientsTotal++;
        ingredients.add(ingredient2);
        }
        if(_ingredient3.length() > 0)
        {
          ingredient3 = new Ingredient(_ingredient3, _measure3);
          ingredient3.setStandardizedOz(_measure3);
        ingredientsTotal++;
        ingredients.add(ingredient3);
        }
        if(_ingredient4.length() > 0)
        {
          ingredient4 = new Ingredient(_ingredient4, _measure4);
          ingredient4.setStandardizedOz(_measure4);
          ingredientsTotal++;
          ingredients.add(ingredient4);
        }
        if(_ingredient5.length() > 0)
        {
        ingredient5 = new Ingredient(_ingredient5, _measure5);
        ingredient5.setStandardizedOz(_measure5);
        ingredientsTotal++;
        ingredients.add(ingredient5);
        }
        if(_ingredient6.length() > 0)
        {
        ingredient6 = new Ingredient(_ingredient6, _measure6);
        ingredient6.setStandardizedOz(_measure6);
        ingredientsTotal++;
        ingredients.add(ingredient6);
        }
        if(_ingredient7.length() > 0)
        {
        ingredient7 = new Ingredient(_ingredient7, _measure7);
        ingredient7.setStandardizedOz(_measure7);
        ingredientsTotal++;
        ingredients.add(ingredient7);
        }
        
    }
    
    
  private Cocktail()
  {
    
  }
   
  int getTotalIngredients()
  {
   return ingredientsTotal; 
  }
  
  String getInstructions() // need to update this to limit the per line length of the string characters
  {
   return instructions;
  }
  
  String getCocktailName()
  {
    return name;
  }
  
  public PImage displayThumb()
  {
    return thumbImage;
  }
  
  public String getIngredient1()
  {
    if(ingredientsTotal >= 1)
    {
    return ingredient1.getIngredientName();
    } else {
    return "";
    }
  }
  
    public String getIngredient2()
  {
    if(ingredientsTotal >= 2)
    {
    return ingredient2.getIngredientName();
      } else {
    return "";
    }
  }
  
    public String getIngredient3()
  {
    if(ingredientsTotal >= 3)
    {
    return ingredient3.getIngredientName();
      } else {
    return "";
    }
  }
  
    public String getIngredient4()
  {
    if(ingredientsTotal >= 4)
    {
    return ingredient4.getIngredientName();
      } else {
    return "";
    }
  }
  
    public String getIngredient5()
  {
    if(ingredientsTotal >= 5)
    {
    return ingredient5.getIngredientName();
      } else {
    return "";
    }
  }
  
      public String getIngredient6()
  {
    if(ingredientsTotal >= 6)
    {
    return ingredient6.getIngredientName();
      } else {
    return "";
    }
  }
  
      public String getIngredient7()
  {
    if(ingredientsTotal >= 7)
    {
    return ingredient7.getIngredientName();
      } else {
    return "";
    }
  }
  
  
  public String getGlass()
  {
    return glass;
  }

  
  public PImage getIngredientThumb1()
  {
    return ingredient1.displayThumb();
  }
  
    public PImage getIngredientThumb2()
  {
    return ingredient2.displayThumb();
  }
  
    public PImage getIngredientThumb3()
  {
    return ingredient3.displayThumb();
  }
  
    public PImage getIngredientThumb4()
  {
    return ingredient4.displayThumb();
  }
  
    public PImage getIngredientThumb5()
  {
    return ingredient5.displayThumb();
  }
  
      public PImage getIngredientThumb6()
  {
    return ingredient6.displayThumb();
  }
  
      public PImage getIngredientThumb7()
  {
    return ingredient7.displayThumb();
  }
  
  
    public String getMeasurement1()
  {
    if(ingredientsTotal >= 1)
    {
    return ingredient1.getMeasureRaw();
      } else {
    return "";
    }
  }
    public String getMeasurement2()
  {
    if(ingredientsTotal >= 2)
    {
    return ingredient2.getMeasureRaw();
      } else {
    return "";
    }
  }
    public String getMeasurement3()
  {
    if(ingredientsTotal >= 3)
    {
    return ingredient3.getMeasureRaw();
      } else {
    return "";
    }
  }
    public String getMeasurement4()
  {
    if(ingredientsTotal >= 4)
    {
    return ingredient4.getMeasureRaw();
      } else {
    return "";
    }
  }
    public String getMeasurement5()
  {
    if(ingredientsTotal >= 5)
    {
    return ingredient5.getMeasureRaw();
      } else {
    return "";
    }
  }
    public String getMeasurement6()
  {
    if(ingredientsTotal >= 6)
    {
    return ingredient6.getMeasureRaw();
      } else {
    return "";
    }
  }
    public String getMeasurement7()
  {
    if(ingredientsTotal >= 7)
    {
    return ingredient7.getMeasureRaw();
      } else {
    return "";
    }
  }
  public ArrayList<Ingredient> getIngredients()
  {
    return ingredients;
  }
  
}
