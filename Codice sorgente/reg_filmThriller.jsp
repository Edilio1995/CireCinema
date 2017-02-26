<!DOCTYPE html>
<html>
	<head>
	  <%@  page import="Utils.userBeans"%>
	  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	  <meta http-equiv="refresh" content="60" />
	  <style>
	    @import url(style.css);
	  </style>
	  <title>Cericinema - Film Thriller</title>
	</head>
	<body onload="carica()">
	 <header>
	    <a href="reg_index.jsp">
	   		<center><img width="200px" src="img/PC-HUNT.png"></center>
	    </a>
	  </header>
		<ul id="menu">
		    <li><a class="menu" href="reg_index.jsp">Home</a></li>
		    <li><a class="menu" href="reg_lista_film.jsp">Lista film</a></li>
				<li> <a id = "tendina" class="menu">Categoria</a>
					<ul>
						<li><a href="reg_filmAnimazione.jsp">Animazione</a></li>
						<li><a href="reg_filmAvventura.jsp">Avventura</a></li>
						<li><a href="reg_filmAzione.jsp">Azione</a></li>
						<li><a href="reg_filmCommedia.jsp">Commedia</a></li>
						<li><a href="reg_filmFantascienza.jsp">Fantascienza</a></li>
						<li><a href="reg_filmHorror.jsp">Horror</a></li>
						<li><a href="reg_filmThriller.jsp">Thriller</a></li>
					</ul>
				</li>
		    <li><a class="menu" href="reg_contatti.jsp">Contatti</a></li>
		    <li><a class="menu" href="reg_ilmioaccount.jsp">Il mio Account</a></li>
		    <li><a class="menu" href="reg_imieiacquisti.jsp">I miei Acquisti</a></li>
		    <li><div id="car">
			<input type="button" value="Esci" onclick="document.location.href='index.jsp'">
	    	<input placeholder="Cerca" id="ricerca" type="search"/>
		    		<script>
		    			var txt = document.getElementById("ricerca");
		    			txt.onkeydown = function(e){
		    				if(e.keyCode==13){
		    					Ricerca();
		    				}
		    			}
		    		</script>
	    	</div>
	    	</form>
	   </li>
	 </ul>

		<%if(request.getAttribute("msg")!=null){%>
			<div id="avviso"><%=request.getAttribute("msg")%></div>
			<%}%>

	<div id="content">
		<table id="prodotti"></table>
	</div>
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
		<script>
		/*		function loadXMLDoc()
				{
				  var xmlhttp = new XMLHttpRequest();
				  xmlhttp.onreadystatechange = function()
				  {
				    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
				    {
				      myFunction(xmlhttp);
				    }
				  };
				  xmlhttp.open("GET", "pc_catalog.xml", true);
				  xmlhttp.send();
				}

				loadXMLDoc();

				function myFunction(xml)
				{
				  var i;
				  var j=0;
				  var xmlDoc = xml.responseXML;
				  var table="";
				  var x = xmlDoc.getElementsByTagName("PC");
				  table += "<tr>";
				  for (i = 0; i <x.length; i++)
				  {
						table += "<td> <form method='post' action='DettagliProdotto'>" +
						'<button class="foto_prodotto" id="btn_index" type="submit"> <img src="' + x[i].getElementsByTagName("PIC")[0].childNodes[0].nodeValue + '" width="200" height="200" align="center">' +
					//	"</button>" +
						"<input type='text' name='id' hidden value='" + x[i].getElementsByTagName("ID")[0].childNodes[0].nodeValue + "'><br>";
						table +=
						"<h3> <a class = 'prodotto'" + x[i].getElementsByTagName("ID")[0].childNodes[0].nodeValue + "'>"
						+ x[i].getElementsByTagName("NAME")[0].childNodes[0].nodeValue + "</a></h3>" +
						"</button></form><br>"+
						"<b>CPU:</b>" + x[i].getElementsByTagName("CPU")[0].childNodes[0].nodeValue +
						"<br>"+
						"<b>RAM:</b>" + x[i].getElementsByTagName("RAM")[0].childNodes[0].nodeValue +
						"<br>"+
						"<b>GPU:</b>" + x[i].getElementsByTagName("GPU")[0].childNodes[0].nodeValue +
						"<br>"+
						"<b>HDD:</b>" + x[i].getElementsByTagName("HDD")[0].childNodes[0].nodeValue +
						"<br>"+
						"<b>PREZZO:</b>" + x[i].getElementsByTagName("PREZZO")[0].childNodes[0].nodeValue +
						"&#8364</td>";
						if(i+1==j+3)
						{
							j+=3;
							table += "</tr><tr>";
						}
				   }
				   table += "</tr>";
				   document.getElementById("prodotti").innerHTML = table;
				}*/

				function carica() {
					  var xhttp = new XMLHttpRequest();
					  xhttp.onreadystatechange = function() {
						  if (xhttp.readyState == 4 && xhttp.status == 200) {
						    document.getElementById("prodotti").innerHTML = xhttp.responseText;
						  }
						};
						xhttp.open("POST", "MostraDati", true);
						xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
						xhttp.send("mex="+"thriller&mex2=reg");
				}
				function Ricerca() {
					  var xhttp = new XMLHttpRequest();
					  xhttp.onreadystatechange = function() {
						  if (xhttp.readyState == 4 && xhttp.status == 200) {
						    document.getElementById("prodotti").innerHTML = xhttp.responseText;
						  }
						};
						xhttp.open("POST", "Ricerca", true);
						xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
						xhttp.send("mex="+document.getElementById("ricerca").value);
				}
		</script>
	</body>
</html>