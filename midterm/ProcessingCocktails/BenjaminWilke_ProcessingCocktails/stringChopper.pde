public String[] stringChopper(String stringToChop, float charChopLength) // this function takes a string of any length and cuts it into a certain width, returns array of lines
{
  stringToChop = stringToChop.replaceAll("\r", "").replaceAll("\n", "");
  int numLines = ceil(stringToChop.length() / charChopLength);
  int charChopLengthInt = int(charChopLength);  
  String[] myStringArray = new String[numLines];
  
  char[] tempChars = new char[charChopLengthInt];
  
  for(int i = 0; i < numLines; i++)
  {
    for(int j = 0; j < charChopLengthInt; j++)
    {
      if((j + (charChopLengthInt * i) < stringToChop.length()))
      {
       tempChars[j] = stringToChop.charAt(j + (charChopLengthInt * i));
      }
    }
    String tempString = new String(tempChars);
    myStringArray[i] = tempString;
    
    // this is required to clear out the temp string array to remove the characters from previous iteration
    
    for(int k = 0; k < charChopLengthInt; k++)
    {
       tempChars[k] = ' '; 
    } 
  }
  
  return myStringArray; 
}
