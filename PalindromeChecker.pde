public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
  
}
public boolean palindrome(String word)
{
  String palindrome = "";
  
  for(int i = 0; i <= word.length() - 1; i++){
    if(Character.isLetter(word.charAt(i))){
      palindrome += word.charAt(i);
    }
  }
  
  if(palindrome.toLowerCase().equals(reverse(word))){
    return true; 
  }
  return false;
}
public String reverse(String sWord)
{
    String sNew = new String();   
  
  for(int i = sWord.length() - 1; i >= 0; i--){
    if(Character.isLetter(sWord.charAt(i))){
      sNew += sWord.charAt(i);
    }
  }

    return sNew.toLowerCase();
}

