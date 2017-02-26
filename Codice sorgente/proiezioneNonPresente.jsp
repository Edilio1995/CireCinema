<!DOCTYPE html>
<html>
	<head>
	  <meta charset="UTF-8">
	 <%@  page import="Utils.userBeans"%>
	  <style>
	    @import url(style.css);
	  </style>
	  <title>Alcuna Proiezione Presente</title>
	</head>
	<body onload="">
	     <a href="visualizzaProdottiAdmin.jsp">
	   		<center>
	   			<img width="200px" src="img/PC-HUNT.png">
	   		</center>
	    </a>
	  </header>
	    <ul id="menu">
	      <li><a class="menu" href="visualizzaProdottiAdmin.jsp">Elenco Film</a></li>
		    <li><a class="menu" href="aggiungiProdotto.jsp">Aggiungi proiezione</a></li>
		    <li><a class="menu" href="ImpExp.jsp">Vedi info</a></li>
		    <li><a class="menu" href="VisualizzaUtentiAdmin.jsp">Visualizza Utenti</a></li>
	   </ul>
	   <div id="logout">
			    <span id="benvenuto">Benvenuto Admin </span>
			    <form method="post" action="Logout">
			    	<input type="submit" name="Logout" value="Logout">
			    	<input type="hidden" name="admin" value="admin">
			    </form>
			</div>
		<table id="prodotti" width="50%">
		    <td>
		    	<strong>Alcuna proiezione trovata per questo Film Torna alla <a href="visualizzaProdottiAdmin.jsp">HOME!</a></strong>
		    </td>
		</table>
	    <footer>
	  <div id="copyright">
	    <p>Design Copyright � Ildo Tiberio. All rights reserved.</p>
	  </div>
	  <div id="svg">
	  	<svg height="10" width="0">
	    	<img src="img/PC-HUNT_logo.svg" height="50" width="80">
	  	</svg>
	  </div>
	</footer>
	</body>
</html>