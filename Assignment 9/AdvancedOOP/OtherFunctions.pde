void drawIntroText(AirQuality airQuality)
{
  pushMatrix();
  translate(15, introTextPosition);

  text("Country: " + airQuality.getCountry(), 0, 0);
  text("State: " + airQuality.getState(), 0, 20);
  text("City: " + airQuality.getCity(), 0, 40);
  text("AQI: " + airQuality.getAQI(), 0, 60);

  popMatrix();

  introTextPosition = introTextPosition - 2;
}


void explode(PVector position)
{
  if (explosionSize < 115)
  {
    pushMatrix();
    translate(position.x, position.y);
    image(explosion, 0, 0, explosionSize, explosionSize);  
    popMatrix();
    explosionSize++;
  }
}
