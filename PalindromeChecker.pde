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
  String some = format(word);
  String a = reverse(some);
  if(a.equals(some))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String a = new String();
  for(int i = str.length()-1; i >= 0; i--)
  {
    a += str.substring(i, i + 1);
  }
  return a;
}
public String format(String str)
{
  String a = new String();
  for(int i = 0; i < str.length(); i++)
  {
    if(Character.isLetter(str.charAt(i)))
    {
      a += str.substring(i, i + 1);
    }
  }
  a = a.toLowerCase();
  return a;
}

