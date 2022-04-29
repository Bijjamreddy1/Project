<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
        background-color: rgb(230, 174, 102);
        width: 100%;
    }
    
    h2 {
        text-align: center;
    }
    
    p {
        text-align: center;
    }
    
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }
    
    td,
    th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }
    
    tr:nth-child(even) {
        background-color: #dddddd;
    }
    
    .head {
        color: rgb(0, 255, 213);
        font-size: 30px;
    }
    
    .para {
        color: rgb(255, 196, 0);
        font-size: 20px;
        font-weight: bold;
    }
    
    h1 {
        text-align: center;
    }
    
    p {
        text-align: center;
    }
    
    .container {
        height: 200px;
        position: relative;
    }
    
    .center {
        margin: 0;
        position: absolute;
        top: 50%;
        left: 50%;
        -ms-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
    }
    
    .btn1 {
        background-color: #e24c11;
        /* Green */
        border-radius: 25px;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px;
        cursor: pointer;
        top: -20%;
    }
    
    .btn2 {
        background-color: #3213df;
        /* Green */
        border-radius: 25px;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px;
        cursor: pointer;
    }
    
    .business {
        font-size: large;
        font-weight: bold;
        margin: 0%;
    }
    
    .hidden {
        display: none;
    }
    
    .placeholder {
        font-size: 12px;
    }
    
    table {
        width: 100%;
    }
    
    .lbl {
        text-align: center;
        padding-left: 160px;
        padding-right: 160px;
    }
    
    .lbl1 {
        text-align: center;
        padding-left: 190px;
        padding-right: 190px;
    }
    
    #myInput {
        background-image: url('/css/searchicon.png');
        background-position: 10px 10px;
        background-repeat: no-repeat;
        width: 100%;
        font-size: 16px;
        padding: 12px 20px 12px 40px;
        border: 1px solid #ddd;
        margin-bottom: 12px;
    }
    
    #myTable {
        border-collapse: collapse;
        width: 100%;
        border: 1px solid #ddd;
        font-size: 18px;
    }
    
    #myTable th,
    #myTable td {
        text-align: left;
        padding: 12px;
    }
    
    #myTable tr {
        border-bottom: 1px solid #ddd;
    }
    
    #myTable tr.header,
    #myTable tr:hover {
        background-color: #f1f1f1;
    }
    
    .biomet {
        color: white;
        font-size: 60px;
    }
    
    * {
        margin: 0;
        padding: 0;
    }
</style>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<title>Task</title>
</head>
<body >

<div>
        <h1 class="biomet">bi<span style="color: rgb(11, 248, 11);">o</span>met</h1>
        <p class="business">SMART IDENTITY SOLUTIONS</p>


        <div class="container">
            <div class="center">

                <input id="toggleVisibilityButton" type="button" value="STATIC CONTENT" class="btn1" />

                <input id="toggleVisibilityButton1" type="button" value="EMPLOYEE DETAILS" class="btn2" />

            </div>
        </div>

    </div>


    <br>
    <div>
 
<div id =footer></div>
<input type="text" id="myInput" style="display:none" onkeyup="myFunction()" placeholder="Search employee by Name" title="Type in a name">
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/emp_table"  
     user="root"  password="root"/>  

  <sql:query dataSource="${db}" var="rs">  
SELECT * from emp_det;  
</sql:query>  
<table id="displaytable"  style="display:none" border="1px solid"   align="center" >  
<tr  >  

<th class="lbl1">Employee Name</th>
<th class="lbl1"> Employee ID</th>    
<th class="lbl1">Department</th>  

</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr >  
 
<td><c:out value="${table.Employee_name}"/></td>
<td><c:out value="${table.Employee_ID}"/></td>  
<td><c:out value="${table.Emp_department}"/></td>  

</tr>  
</c:forEach>  </table>




<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/emp_table"  
     user="root"  password="root"/>  
 <sql:query dataSource="${db}" var="rs">  
SELECT * from emp_details;  
</sql:query>  
<table id="displaytable3"  style="display:none" border="1px solid"   align="center" >  
<tr  >  

<th class="lbl">Company</th>
<th class="lbl"> Name</th>    
<th class="lbl">contact</th>  
<th class="lbl">Email</th>  

</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr >  
<td><c:out value="${table.Company}"/></td>
<td><c:out value="${table.Name}"/></td>
<td><c:out value="${table.contact}"/></td>  
<td><c:out value="${table.Email}"/></td>  

</tr>  
</c:forEach>  </table>

<script>
document.getElementById("toggleVisibilityButton").addEventListener("click", function(button) {
    if (document.getElementById("displaytable").style.display === "none")
        document.getElementById("displaytable").style.display = "block";
    else document.getElementById("displaytable").style.display = "none";


});

document.getElementById("toggleVisibilityButton").addEventListener("click", function(button) {
    if (document.getElementById("displaytable3").style.display === "block")
        document.getElementById("displaytable3").style.display = "none";
});



document.getElementById("toggleVisibilityButton1").addEventListener("click", function(button) {
    if (document.getElementById("displaytable3").style.display === "none")
        document.getElementById("displaytable3").style.display = "block";
    else document.getElementById("displaytable3").style.display = "none";
});

document.getElementById("toggleVisibilityButton1").addEventListener("click", function(button) {
    if (document.getElementById("displaytable").style.display === "block")
        document.getElementById("displaytable").style.display = "none";
});

document.getElementById("toggleVisibilityButton").addEventListener("click", function(button) {
    if (document.getElementById("myInput").style.display === "none")
        document.getElementById("myInput").style.display = "none";
    else document.getElementById("myInput").style.display = "none";
});

document.getElementById("toggleVisibilityButton1").addEventListener("click", function(button) {
    if (document.getElementById("myInput").style.display === "block")
        document.getElementById("myInput").style.display = "none";
    else document.getElementById("myInput").style.display = "block";
});

function myFunction() {
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("displaytable3");
    tr = table.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[1];

        if (td) {
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }


}


</script>

</body>
</html>