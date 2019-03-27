int[] getRandomCityIDs()
{
  int[] cityIDs;
  cityIDs = new int[NUMBER_CITIES];
  
  JSONArray cityListArray;
  cityListArray = loadJSONArray("city.list.json");
    
  for(int i = 0; i < NUMBER_CITIES; i++)
  {
     int rando = int(random(0, cityListArray.size())); 
     JSONObject cityEntry = cityListArray.getJSONObject(rando);
     
     cityIDs[i] = cityEntry.getInt("id");
  }
  
  return cityIDs;
    
}
