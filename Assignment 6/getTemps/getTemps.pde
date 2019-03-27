float[][] getTemps(int[] cityIDs)
{
    float[][] tempsMatrix = new float[cityIDs.length][40];
    JSONObject rawObject;
    String getURL;
    
    for(int i = 0; i < cityIDs.length; i++)
    {
      getURL = "http://api.openweathermap.org/data/2.5/forecast?APPID=d0a7bd5defa412ccdb14ec9f982f29b6" + "&id=" + cityIDs[i];
      println(getURL);
      rawObject = loadJSONObject(getURL);
      JSONArray tempArrayTotal = rawObject.getJSONArray("list");
      
      //println("The list size is: " + tempArrayTotal.size());
      
      
      for(int j = 0; j < tempArrayTotal.size(); j++)
      {
        JSONObject tempEntry = tempArrayTotal.getJSONObject(j);
        
        JSONObject tempEntryMain = tempEntry.getJSONObject("main");
        
        tempsMatrix[i][j] = kelvinToFahrenheit(tempEntryMain.getFloat("temp"));
      }
  
    }
    
    return tempsMatrix;
}   
    
