class AirQuality
{
  private String country;
  private String state;
  private String city;
  private int aqi;

  AirQuality()
  {
    String tempCountry = "";
    String tempState = "";
    String tempCity = "";
    int tempAQI = 0;

    Boolean not_correct = true;

    while (not_correct)    // all of this for error handling when city data isn't returned.
    {
      tempCountry = getRandomCountry();
      tempState = getRandomState(tempCountry);
      tempCity = getRandomCity(tempCountry, tempState);
      tempAQI = getAQI(tempCountry, tempState, tempCity);

      if (tempAQI == 99999)
      {
        println("city not found error");
        not_correct = true;
      } else {
        not_correct = false;
      }
    }
    country = tempCountry;
    state = tempState;
    city = tempCity;
    aqi = tempAQI;
  }

  private String getRandomCountry()
  {
    JSONObject rawObj = loadJSONObject("http://api.airvisual.com/v2/countries?key=2NubTA2fYmmazEFzW");
    JSONArray working = rawObj.getJSONArray("data");
    JSONObject country = working.getJSONObject(int(random(0, working.size())));
    println(country.getString("country"));
    return country.getString("country");
  }

  private String getRandomState(String country)
  {
    // need to check for spaces in Country Name so that it can be URL encoded
    if (country.contains(" "))
    {
      country = URLEncoder.encode(country);
    }
    String url = "http://api.airvisual.com/v2/states?country=" + country + "&key=2NubTA2fYmmazEFzW";
    JSONObject rawObj = loadJSONObject(url);
    JSONArray working = rawObj.getJSONArray("data");
    if (working.size() > 1)
    {
      println("has more than one state");
      JSONObject state = working.getJSONObject(int(random(0, working.size())));
      println(state.getString("state"));
      return state.getString("state");
    } else {
      JSONObject state = working.getJSONObject(0);
      println(state.getString("state"));
      return state.getString("state");
    }
  }

  private String getRandomCity(String country, String state)
  {
    // need to check for spaces in Country Name so that it can be URL encoded
    if (country.contains(" "))
    {
      country = URLEncoder.encode(country);
    }
    // need to check for spaces in State Name so that it can be URL encoded
    if (state.contains(" "))
    {
      state = URLEncoder.encode(state);
    }
    String url = "http://api.airvisual.com/v2/cities?state=" + state + "&country=" + country + "&key=2NubTA2fYmmazEFzW";



    JSONObject rawObj = loadJSONObject(url);
    JSONArray working = rawObj.getJSONArray("data");
    if (working.size() > 1)
    {
      println("has more than one city");
      JSONObject city = working.getJSONObject(int(random(0, working.size())));
      println(city.getString("city"));
      return city.getString("city");
    } else {
      println("has only one city");
      JSONObject city = working.getJSONObject(0);
      println(city.getString("city"));
      return city.getString("city");
    }
  }

  private int getAQI(String country, String state, String city)
  {
    // need to check for spaces in Country Name so that it can be URL encoded
    if (country.contains(" "))
    {
      country = URLEncoder.encode(country);
    }
    // need to check for spaces in State Name so that it can be URL encoded
    if (state.contains(" "))
    {
      state = URLEncoder.encode(state);
    }
    // need to check for spaces in City Name so that it can be URL encoded
    if (city.contains(" "))
    {
      city = URLEncoder.encode(city);
    }


    String url = "http://api.airvisual.com/v2/city?city=" + city + "&state=" + state + "&country=" + country + "&key=2NubTA2fYmmazEFzW";
    JSONObject errorCheck = loadJSONObject(url);

    if (errorCheck.getString("status") == "fail")  // this checks to see if the message comes back as failure
    {
      println("city not found error");
      return 99999;  // signifies an error
    } else {


      JSONObject rawObj = loadJSONObject(url);
      JSONObject working = rawObj.getJSONObject("data");
      JSONObject working1 = working.getJSONObject("current");
      JSONObject working2 = working1.getJSONObject("pollution");


      println(working2.getInt("aqius"));
      return working2.getInt("aqius");
    }
  }

  public int getAQI()
  {
    return aqi;
  }

  public String getCountry()
  {
    return country;
  }
  public String getState()
  {
    return state;
  }

  public String getCity()
  {
    return city;
  }
}
