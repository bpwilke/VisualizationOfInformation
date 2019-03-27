
final int CANVAS_HEIGHT = 600;
final int CANVAS_WIDTH = 970;

final int NUMBER_CITIES = 10;
int[] cityIDsArray = new int[NUMBER_CITIES];

float[][] temperatureMatrix;

void settings()
{
   size(CANVAS_WIDTH, CANVAS_HEIGHT);
   
}

void setup()
{
    background(255);
    cityIDsArray = getRandomCityIDs(); // get NUMBER_CITIES random City IDs from local JSON
    
    
   float[][] temperatureMatrix = new float[NUMBER_CITIES][37];
   
   temperatureMatrix = getTemps(cityIDsArray);
   
   for(int x = 0; x < NUMBER_CITIES; x++)
   {
     float[] cityTemps = new float[37];
     
     
     
     for(int y = 0; y < 37; y++)
     { 
       println("City index: " + x + " || City temp: " + y + "||" + temperatureMatrix[x][y]);
       cityTemps[y] = temperatureMatrix[x][y];  
     }
   
  pushMatrix();
    //translate(0, CANVAS_HEIGHT / 2);
    drawTempGraph(cityTemps);
  popMatrix();
           
           
           
   }
  
  


}

void draw()
{

  

  
}

  

  
  
