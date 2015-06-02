<html>

<head>
	<title>Phaidra XDI Registration Service</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link href="css/style.css" media="all" rel="stylesheet" />
	<link href="css/topcoat.css" media="all" rel="stylesheet" />
</head>

<body>

<img src="phaidra.png" style="width: 200px; padding-right: 50px;">

<h1>Phaidra XDI Registration Service</h1>

	<% if (request.getAttribute("feedback") != null) { %>
			
		<p class="feedback"><%= request.getAttribute("error") != null ? request.getAttribute("feedback") : "" %></p>

	<% } %>

	<% if (request.getAttribute("error") != null) { %>
			
		<p class="error"><%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %></p>

	<% } %>

<form action="/Register" method="post">
<table>
<tr>
  <td>XDI Registry Server:</td>
  <td><input type="text" name="xdiEndpointUri" value="http://localhost:8080/xdi/mem-graph" class="topcoat-text-input--large text"></td>
</tr>
<tr>
  <td>Phaidra Identifier:</td>
  <td><input type="text" name="phaidraIdentifier" value="https://phaidra.univie.ac.at/o:328206" class="topcoat-text-input--large text"></td>
</tr>
<tr>
  <td>Other identifiers:</td>
  <td><textarea name="identifiers" class="topcoat-text-input--large">AC04134769,urn:nbn:at:at-ubw-18147.58838.612361-2</textarea></td>
</tr>
</table>
<input type="submit" value="Register" class="topcoat-button--large--cta">
</form>

</body>

</html>
