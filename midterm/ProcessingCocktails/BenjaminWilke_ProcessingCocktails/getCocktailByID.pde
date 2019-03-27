public Cocktail getCocktailByID(int ID)
{
  JSONObject rawJSONCocktail;
  
  String queryURL = "http://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=" + ID; // form url
  //String queryURL = "test.json"; // form url
  
  rawJSONCocktail = loadJSONObject(queryURL); // get raw data
  JSONArray tempArray = rawJSONCocktail.getJSONArray("drinks"); // parse into object to first array
  JSONObject c = tempArray.getJSONObject(0);  // parse into object to first array
  
  println("Cocktail " + ID);
  println(rawJSONCocktail);
  
  // call full constructor
  Cocktail newCocktail = new Cocktail(c.getString("idDrink"), c.getString("strDrink"), c.getString("strDrinkThumb"), c.getString("strInstructions"),
    c.getString("strGlass"), c.getString("strIngredient1"), c.getString("strIngredient2"), c.getString("strIngredient3"), c.getString("strIngredient4"), 
    c.getString("strIngredient5"), c.getString("strIngredient6"), c.getString("strIngredient7"),
    c.getString("strMeasure1"), c.getString("strMeasure2"), c.getString("strMeasure3"), c.getString("strMeasure4"), 
    c.getString("strMeasure5"), c.getString("strMeasure6"), c.getString("strMeasure7"));
  
  return newCocktail;
 
}
