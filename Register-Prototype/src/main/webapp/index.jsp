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
</table>

<table border="1">
	<tr>
		<th></th>
		<th>PID</th>
		<th>Phaidra URL</th>
		<th>URN:NBN</th>
		<th>AC-number</th>
		<th>Handle</th>
		<th>DOI</th>
		<th>Ticket</th>
	</tr>
	<tr>
		<input type="hidden" name="phaidraIdentifier1" value="https://phaidra.univie.ac.at/o:328142">
		<input type="hidden" name="identifiers1" value="urn:nbn:at:at-ubw-18132.71955.861062-4,AC00210071,hdl:11353/at-ubw-13474.03558.711153-4">
		<td><input type="submit" name="submit" value="Register 1" class="topcoat-button--large--cta"></td>
		<td id="pid_1">o:328142</td>
		<td id="url_1">https://phaidra.univie.ac.at/</td>
		<td id="urn_1">urn:nbn:at:at-ubw-18132.71955.861062-4</td>
		<td id="ac_1">AC00210071</td>
		<td id="handle_1">hdl:11353/at-ubw-13474.03558.711153-4</td>
		<td id="doi_1"></td>
		<td id="ticket_1">3683</td>
	</tr>
	<tr>
		<input type="hidden" name="phaidraIdentifier2" value="https://phaidra.univie.ac.at/o:183842">
		<input type="hidden" name="identifiers2" value="AC00336043,http://dx.doi.org/10.1002/net.21522">
		<td><input type="submit" name="submit" value="Register 2" class="topcoat-button--large--cta"></td>
		<td id="pid_2">o:183842</td>
		<td id="url_2">https://phaidra.univie.ac.at/</td>
		<td id="urn_2"></td>
		<td id="ac_2">AC00336043</td>
		<td id="handle_2"></td>
		<td id="doi_2">http://dx.doi.org/10.1002/net.21522</td>
		<td id="ticket_2"></td>
	</tr>
	<tr>
		<td><input type="submit" name="submit" value="Register 3" class="topcoat-button--large--cta"></td>
		<input type="hidden" name="phaidraIdentifier3" value="https://phaidra.univie.ac.at/o:192017">
		<input type="hidden" name="identifiers3" value="urn:nbn:at:at-ubw-18140.45186.205770-3,AC00396693">
		<td id="pid_3">o:192017</td>
		<td id="url_3">https://phaidra.univie.ac.at/</td>
		<td id="urn_3">urn:nbn:at:at-ubw-18140.45186.205770-3</td>
		<td id="ac_3">AC00396693</td>
		<td id="handle_3"></td>
		<td id="doi_2"></td>
		<td id="ticket_3"></td>
	</tr>
</table>

</form>

</body>

</html>
