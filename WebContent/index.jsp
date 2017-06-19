<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.2.3/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="style/style.css">
<title>Sudoku</title>
</head>
<body onload="myFunction()">

<script>
function myFunction() {
	for (i = 0; i <= 80; i++) { 
    	var box = document.getElementById("cell-" + i);
    	if(box.value !== "")
    	box.setAttribute('readonly', 'readonly');  
	}
}
</script>

<div class="container">

	<div class="page-header">      
      <h1>Sudoku<small> v0.0.1</small></h1>
    </div>
    
    <div>
  <ul class="nav nav-tabs" style="margin-bottom: 20px">
    <li><a data-toggle="tab" href="play?n=1">Test</a></li>
    <li><a data-toggle="tab" href="play?n=10">Facile</a></li>
    <li><a data-toggle="tab" href="play?n=32">Medio</a></li>
    <li><a data-toggle="tab" href="play?n=45">Difficile</a></li>
    <li><a data-toggle="tab" href="play?n=54">Impossibile</a></li>
  </ul>
	</div>
      
      <form method="post" action="play">
      
      <table id="grid">

        <tr>
          <td><input id="cell-0" name="cell-0" type="text" value="${cell0}" required></td>
          <td><input id="cell-1" name="cell-1" type="text" value="${cell1}" required></td>
          <td><input id="cell-2" name="cell-2" type="text" value="${cell2}" required></td>
         
          <td><input id="cell-3" name="cell-3" type="text" value="${cell3}" required></td>
          <td><input id="cell-4" name="cell-4" type="text" value="${cell4}" required></td>
          <td><input id="cell-5" name="cell-5" type="text" value="${cell5}" required></td>
          
          <td><input id="cell-6" name="cell-6" type="text" value="${cell6}" required></td>
          <td><input id="cell-7" name="cell-7" type="text" value="${cell7}" required></td>
          <td><input id="cell-8" name="cell-8" type="text" value="${cell8}" required></td>
        </tr>

        <tr>
          <td><input id="cell-9" name="cell-9" type="text" value="${cell9}" required></td>
          <td><input id="cell-10" name="cell-10" type="text" value="${cell10}" required></td>
          <td><input id="cell-11" name="cell-11" type="text" value="${cell11}" required></td>
          
          <td><input id="cell-12" name="cell-12" type="text" value="${cell12}" required></td>
          <td><input id="cell-13" name="cell-13" type="text" value="${cell13}" required></td>
          <td><input id="cell-14" name="cell-14" type="text" value="${cell14}" required></td>
          
          <td><input id="cell-15" name="cell-15" type="text" value="${cell15}" required></td>
          <td><input id="cell-16" name="cell-16" type="text" value="${cell16}" required></td>
          <td><input id="cell-17" name="cell-17" type="text" value="${cell17}" required></td>
        </tr>

        <tr>          
          <td><input id="cell-18" name="cell-18" type="text" value="${cell18}" required></td>
          <td><input id="cell-19" name="cell-19" type="text" value="${cell19}" required></td>
          <td><input id="cell-20" name="cell-20" type="text" value="${cell20}" required></td>
          
          <td><input id="cell-21" name="cell-21" type="text" value="${cell21}" required></td>
          <td><input id="cell-22" name="cell-22" type="text" value="${cell22}" required></td>
          <td><input id="cell-23" name="cell-23" type="text" value="${cell23}" required></td>
          
          <td><input id="cell-24" name="cell-24" type="text" value="${cell24}" required></td>
          <td><input id="cell-25" name="cell-25" type="text" value="${cell25}" required></td>
          <td><input id="cell-26" name="cell-26" type="text" value="${cell26}" required></td>
        </tr>

        <tr>          
          <td><input id="cell-27" name="cell-27" type="text" value="${cell27}" required></td>
          <td><input id="cell-28" name="cell-28" type="text" value="${cell28}" required></td>
          <td><input id="cell-29" name="cell-29" type="text" value="${cell29}" required></td>
          
          <td><input id="cell-30" name="cell-30" type="text" value="${cell30}" required></td>
          <td><input id="cell-31" name="cell-31" type="text" value="${cell31}" required></td>
          <td><input id="cell-32" name="cell-32" type="text" value="${cell32}" required></td>
          
          <td><input id="cell-33" name="cell-33" type="text" value="${cell33}" required></td>
          <td><input id="cell-34" name="cell-34" type="text" value="${cell34}" required></td>
          <td><input id="cell-35" name="cell-35" type="text" value="${cell35}" required></td>
        </tr>

        <tr>          
          <td><input id="cell-36" name="cell-36" type="text" value="${cell36}" required></td>
          <td><input id="cell-37" name="cell-37" type="text" value="${cell37}" required></td>
          <td><input id="cell-38" name="cell-38" type="text" value="${cell38}" required></td>
          
          <td><input id="cell-39" name="cell-39" type="text" value="${cell39}" required></td>
          <td><input id="cell-40" name="cell-40" type="text" value="${cell40}" required></td>
          <td><input id="cell-41" name="cell-41" type="text" value="${cell41}" required></td>
          
          <td><input id="cell-42" name="cell-42" type="text" value="${cell42}" required></td>
          <td><input id="cell-43" name="cell-43" type="text" value="${cell43}" required></td>
          <td><input id="cell-44" name="cell-44" type="text" value="${cell44}" required></td>
        </tr>

        <tr>          
          <td><input id="cell-45" name="cell-45" type="text" value="${cell45}" required></td>
          <td><input id="cell-46" name="cell-46" type="text" value="${cell46}" required></td>
          <td><input id="cell-47" name="cell-47" type="text" value="${cell47}" required></td>
          
          <td><input id="cell-48" name="cell-48" type="text" value="${cell48}" required></td>
          <td><input id="cell-49" name="cell-49" type="text" value="${cell49}" required></td>
          <td><input id="cell-50" name="cell-50" type="text" value="${cell50}" required></td>
          
          <td><input id="cell-51" name="cell-51" type="text" value="${cell51}" required></td>
          <td><input id="cell-52" name="cell-52" type="text" value="${cell52}" required></td>
          <td><input id="cell-53" name="cell-53" type="text" value="${cell53}" required></td>
        </tr>

        <tr>          
          <td><input id="cell-54" name="cell-54" type="text" value="${cell54}" required></td>
          <td><input id="cell-55" name="cell-55" type="text" value="${cell55}" required></td>
          <td><input id="cell-56" name="cell-56" type="text" value="${cell56}" required></td>
          
          <td><input id="cell-57" name="cell-57" type="text" value="${cell57}" required></td>
          <td><input id="cell-58" name="cell-58" type="text" value="${cell58}" required></td>
          <td><input id="cell-59" name="cell-59" type="text" value="${cell59}" required></td>
          
          <td><input id="cell-60" name="cell-60" type="text" value="${cell60}" required></td>
          <td><input id="cell-61" name="cell-61" type="text" value="${cell61}" required></td>
          <td><input id="cell-62" name="cell-62" type="text" value="${cell62}" required></td>
        </tr>

        <tr>          
          <td><input id="cell-63" name="cell-63" type="text" value="${cell63}" required></td>
          <td><input id="cell-64" name="cell-64" type="text" value="${cell64}" required></td>
          <td><input id="cell-65" name="cell-65" type="text" value="${cell65}" required></td>
          
          <td><input id="cell-66" name="cell-66" type="text" value="${cell66}" required></td>
          <td><input id="cell-67" name="cell-67" type="text" value="${cell67}" required></td>
          <td><input id="cell-68" name="cell-68" type="text" value="${cell68}" required></td>
          
          <td><input id="cell-69" name="cell-69" type="text" value="${cell69}" required></td>
          <td><input id="cell-70" name="cell-70" type="text" value="${cell70}" required></td>
          <td><input id="cell-71" name="cell-71" type="text" value="${cell71}" required></td>
        </tr>

        <tr>          
          <td><input id="cell-72" name="cell-72" type="text" value="${cell72}" required></td>
          <td><input id="cell-73" name="cell-73" type="text" value="${cell73}" required></td>
          <td><input id="cell-74" name="cell-74" type="text" value="${cell74}" required></td>
          
          <td><input id="cell-75" name="cell-75" type="text" value="${cell75}" required></td>
          <td><input id="cell-76" name="cell-76" type="text" value="${cell76}" required></td>
          <td><input id="cell-77" name="cell-77" type="text" value="${cell77}" required></td>
          
          <td><input id="cell-78" name="cell-78" type="text" value="${cell78}" required></td>
          <td><input id="cell-79" name="cell-79" type="text" value="${cell79}" required></td>
          <td><input id="cell-80" name="cell-80" type="text" value="${cell80}" required></td>
        </tr>

      </table>
      
         <button style="margin-top: 20px" type="submit" class="btn btn-info">Check!</button>
      </form>
		
    </div>

</body>
</html>