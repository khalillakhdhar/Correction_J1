package codes;

import java.util.ArrayList;

public class Users {
public static ArrayList<User> myusers=new ArrayList<User>();
public  void add(User u)
{
myusers.add(u);	

}
public static void affiche()
{
	
for(User u: myusers)
{
	
System.out.println(u.toString());
}
}
}
