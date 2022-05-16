<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.*,control.*,java.text.DecimalFormat"%>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="CSS/Header.css" rel="stylesheet" type="text/css">
	</head>

<ul class="header2">
<li class="sinistra"><form class="header2" action="search" method="get">
<label for="search" class="header3">PokeHub</label>
<input type="search" id="search" name="search"  placeholder="cerca"size="20"></form></li>
  <li class="sinistra"> <form  class="header2"action="PaginaCatalogo.jsp"  method="post">
  <button class="header" type="submit">Catalogo</button>
    </form></li>
  <%
UserBean utenteHeader = (UserBean) session.getAttribute("userID");
if ( (utenteHeader != null) ) {



    if( utenteHeader.getCategoriaUtente().equalsIgnoreCase("amministratore") ){
    	%>
    	<li class="sinistra"><form action="admin" class="header2" method="post"><button class="header" type="submit">Pagina Admin</button></form></li>
    	<%
    }
    %>
   		<li class="sinistra"><form action="cart" class="header2" method="post"><button class="header" type="submit">Carrello</button></form></li>
   		  <li class="destra"><form action="userLogged.jsp" class="header2" method="post"><input type="image" class="riduci" src="https://www.agenziadiecommerce.it/wp-content/uploads/2015/03/Utente.png" alt="profilo"></form></li>
<%    
} else {
%>
	<li class="sinistra"><form action="LoginPage.jsp" class="header2" method="post"><button class="header" type="submit">Login</button></form></li>
<%
}
%>
</ul>

