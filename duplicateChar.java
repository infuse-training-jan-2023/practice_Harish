<<<<<<< HEAD
import java.util.*;
class FindDuplicate{
    public static void findDuplicate(String str) {
       Map<Character, Integer> map = new HashMap<Character, Integer>();
       char[] charArray = str.toCharArray();
       for (char c : charArray)
         if(map.containsKey(c))
            map.put(c, map.get(c) + 1) ;
         else 
            map.put(c, 1); 
    map.forEach((Character, values)->
                      { if(values> 1)
                            System.out.println(Character + " : "+ (values));});
    }
    public static void main(String[] args)
    {
        String testStrig ="Hello world";
        System.out.println("Duplicate character in :" + testStrig +"\n");
        findDuplicate(testStrig);
    }
}
=======
import java.util.*;
class FindDuplicate{
    public static void findDuplicate(String str) {
       Map<Character, Integer> map = new HashMap<Character, Integer>();
       char[] charArray = str.toCharArray();
       for (char c : charArray)
         if(map.containsKey(c))
            map.put(c, map.get(c) + 1) ;
         else 
            map.put(c, 1); 
    map.forEach((Character, values)->
                      { if(values> 1)
                            System.out.println(Character + " : "+ (values));});
    }
    public static void main(String[] args)
    {
        String testStrig ="Hello world";
        System.out.println("Duplicate character in :" + testStrig +"\n");
        findDuplicate(testStrig);
    }
}
>>>>>>> 7081b5b486ee9851e4623fec6c713767dffc4fcf
