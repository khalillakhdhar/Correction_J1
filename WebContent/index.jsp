<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page import="codes.User" %>
<%@page import="codes.Users" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Formulaire</title>




<%
String message="";
if(request.getParameter("nom")!=null)
{
String nom=request.getParameter("nom");
String prenom=request.getParameter("prenom");
try
{
int age=Integer.parseInt(request.getParameter("age"));
User u=new User(nom,prenom,age);
Users us=new Users();
us.add(u);
}catch(Exception ex)
{
	message="l'age doit être numérique est non null";
	
}

}


%>
<%
ArrayList<User> list=Users.myusers;

%>
</head>
<body>


<div class="container">
  <div class="row">
    <div class="col-sm">
    </div>
    <div class="col-sm">
<form method="post" action="index.jsp">
  <div class="mb-3">
    <label for="nom"  class="form-label">Nom</label>
    <input type="text" required class="form-control" name="nom" id="nom" >

  </div>
  <div class="mb-3">
    <label for="prenom"  class="form-label">Prenom</label>
    <input type="text" required name="prenom" class="form-control" id="prenom">
  </div>
  <div class="mb-3">
    <label for="age" class="form-label">age</label>
    <input type="number" required name="age" min="1" class="form-control" id="age"><%=message %> 
  </div>
  <button type="submit" class="btn btn-primary">Envoyer</button>
</form>
<!-- formulaire -->
    </div>
    <div class="col-sm">
    </div>
  </div>
</div>


<table>
<tr><td>Nom</td><td>Prenom</td><td>Age</td></tr>

</table>


</body>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</html>