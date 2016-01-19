import java.util.*;

public void setup(){
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	
	for (int i = 0 ; i < lines.length; i++){
	  System.out.println(pigLatin(lines[i]));
	}
}
public int findFirstVowel(String theWord){
  
  for(int i = 0; i< theWord.length();i++){
  	if(theWord.substring(i,i+1).equals("a") || theWord.substring(i,i+1).equals("e") || 
  		theWord.substring(i,i+1).equals("i") || theWord.substring(i,i+1).equals("o") || 
  		theWord.substring(i,i+1).equals("u")){
  	
  	return i;

  	}

  }

  return -1;
}

public String pigLatin(String theWord)
{
	if(findFirstVowel(theWord) == -1){return theWord + "ay";}
	if(findFirstVowel(theWord) == 0){return theWord + "way";}
	if(theWord.substring(0,2).equals("qu")){return theWord.substring(2) + theWord.substring(0,2) + "ay";}
	if(findFirstVowel(theWord) != 0){
		for(int i = 0; i< theWord.length(); i++){
			if(theWord.substring(i,i+1).equals("a") || theWord.substring(i,i+1).equals("e") || 
				theWord.substring(i,i+1).equals("i") || theWord.substring(i,i+1).equals("o") || 
				theWord.substring(i,i+1).equals("u")){
			
				return theWord.substring(i) + theWord.substring(0,i) + "ay";
			}
		}
	
		return "ERROR!";
	}
	
	else{
		return "ERROR!";
	}

}


