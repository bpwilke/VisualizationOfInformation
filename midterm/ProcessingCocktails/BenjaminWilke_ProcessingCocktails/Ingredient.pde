class Ingredient
{
   private String name;
   private String measure;
   private String thumbURL;
   private PImage thumbImage;
   
   private float standardizedMeasureOz = 0;
   
   Boolean canBeConvertedToOunces = false;
    
   private Ingredient(String _name, String _measure) // constructor
   {
     name = _name;
     measure = _measure;
     thumbURL = setThumbURL(_name);
     thumbImage = loadImage(thumbURL);
   }
   
   private String setThumbURL(String name)
   {
      thumbURL = "https://www.thecocktaildb.com/images/ingredients/" + name + "-Medium.png";
      return thumbURL;
   }
   
   public PImage displayThumb()
   {
      return thumbImage; 
   }
   
   public String getIngredientName()
   {
      return name; 
   }
   
   public String getMeasureRaw()
   {
     return measure;
   }
   
   public void setStandardizedOz(String rawStringMeasure) // convert unstandardized meaurements to ounces
   {
     switch(rawStringMeasure){
       case "1 oz ":
       standardizedMeasureOz = 1;
       break;
       case "1 oz":
       standardizedMeasureOz = 1;
       break;
       case "1 1/4 oz":
       standardizedMeasureOz = 1.25;
       break;
       case "1 1/4 oz ":
       standardizedMeasureOz = 1.25;
       break;
       case "1 1/2 oz":
       standardizedMeasureOz = 1.5;
       break;
       case "1 1/2 oz ":
       standardizedMeasureOz = 1.5;
       break;
       case "2 oz ":
       standardizedMeasureOz = 2;
       break;
       case "2 oz":
       standardizedMeasureOz = 2;
       break;
       case "3 oz ":
       standardizedMeasureOz = 3;
       break;
       case "3 oz":
       standardizedMeasureOz = 3;
       break;
       case "4 oz":
       standardizedMeasureOz = 4;
       break;
       case "4 oz ":
       standardizedMeasureOz = 4;
       break;
       case "5 oz":
       standardizedMeasureOz = 5;
       break;
       case "5 oz ":
       standardizedMeasureOz = 5;
       break;
       case "1/4 oz":
       standardizedMeasureOz = .25;
       break;
       case "1/2 oz":
       standardizedMeasureOz = .5;
       break;
       case "1/4 oz ":
       standardizedMeasureOz = .25;
       break;
       case "1/2 oz ":
       standardizedMeasureOz = .5;
       break;
       case "3/4 oz":
       standardizedMeasureOz = .75;
       break;
       case "3/4 oz ":
       standardizedMeasureOz = .75;
       break;
       case "1/4 tsp":
       standardizedMeasureOz = 0.04;
       break;
       case "1/2 tsp":
       standardizedMeasureOz = 0.08;
       break;
       case "1 tsp":
       standardizedMeasureOz = 0.166667;
       break;
       case "2 tsp":
       standardizedMeasureOz = 0.333333;
       break;
       case "1/4 tsp ":
       standardizedMeasureOz = 0.04;
       break;
       case "1/2 tsp ":
       standardizedMeasureOz = 0.08;
       break;
       case "1 tsp ":
       standardizedMeasureOz = 0.166667;
       break;
       case "2 tsp ":
       standardizedMeasureOz = 0.333333;
       break;
       case "3 tsp":
       standardizedMeasureOz = .5;
       break;
       case "1 shot":
       standardizedMeasureOz = 2;
       break;
       case "1 shot ":
       standardizedMeasureOz = 2;
       break;
       case "2 shots":
       standardizedMeasureOz = 4;
       break;
       case "2 shots ":
       standardizedMeasureOz = 4;
       break;
       case "1 dash":
       standardizedMeasureOz = .03;
       break;
       case "2 dashes ":
       standardizedMeasureOz = .05;
       break;
       case "3 dashes":
       standardizedMeasureOz = .1;
       break;
       case "1 jigger ":
       standardizedMeasureOz = 1.5;
       break;
       case "2 jiggers ":
       standardizedMeasureOz = 3;
       break;
       case "3 dashes ":
       standardizedMeasureOz = .1;
       break;
       case "1-2 tblsp ":
       standardizedMeasureOz = .75;
       break;
       case "1 tblsp":
       standardizedMeasureOz = .5;
       break;
       case "1 tblsp ":
       standardizedMeasureOz = .5;
       break;
       case "2 tblsp ":
       standardizedMeasureOz = 1;
       break;
       case "2 tblsp":
       standardizedMeasureOz = 1;
       break;
       case "1 cl ":
       standardizedMeasureOz = 0.34;
       break;
       case "2 cl ":
       standardizedMeasureOz = 0.68;
       break;
       case "3 cl ":
       standardizedMeasureOz = 1;
       break;
       case "4 cl ":
       standardizedMeasureOz = 1.35;
       break;

     }
     
     if(standardizedMeasureOz > 0) // set flag that conversion to ounces in this stupid specific mapping can be resolved
     {
       canBeConvertedToOunces = true;
     }
   }
   
   
   
  public float getStandardizedOz()
  {
   return standardizedMeasureOz; 
  }
}
