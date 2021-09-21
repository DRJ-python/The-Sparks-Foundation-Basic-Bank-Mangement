<%@page import="db.DBConnector"%>
<%@ page import="java.sql.*" %>
<html>
   <head>
       <title>
           View Customers
       </title>
<style>
   
   *{
       padding: 0;
margin: 0;
   }
   body{
   background-color: #ccb35b;
}
   .navbar
{
width:100%;
float:right;
padding:8px;
padding-right:40px;
background-color:#f4ead7;
border : 2px solid black;
color: black;
}
.navbar a
{
    font-family: Garamond;
    color:black;
    font-weight:bold;
font-size:20px;
padding-right:50px;
text-decoration:none;
}
.navbar a:hover
{
color:red;
}

table {
   border: 2px solid black;
   background-color: #d9d9d9;
 border-collapse: collapse;
 width: 65%;
 margin-left: auto;
 margin-right: auto;

}
th{
   font-size: 20px;
   font-weight: bold;
   color:black;
   text-shadow: -1px 1px 0 #fff,
   1px 1px 0 #fff,
   1px -1px 0 #fff,
   -1px -1px 0 #fff;
   
}
th, td {
 padding: 8px;
 text-align: center;
 border-bottom: 2px solid black;
 border: 2px solid black;
 
}

tr:hover {background-color: #ccffcc; color:red; font-weight:bold;}
</style>
   </head>
   <body><div>

<span class="navbar">
<b style="color:black;float:left; font-size:20px; font-family:Lucida Handwriting; margin-left:70px;">TSF BANK</b>
<span style="float:right;">
<a  href="index.html">Home</a>
<a href="create_user.jsp">Add Customer</a>
<a href="view.jsp">View User</a>
<a href="transfer.jsp">Transfer Money</a>
<a href="checkhistory.jsp">Check History</a>
</span>
</span>
</div>
<br><br><br>
       <center><h1 style="font-family:Garamond; font-size: 40px; color:black; font-weight: bolder;  margin-top: 2%;margin-bottom: 2%;" ><u>Customer List :</u></h1></center>
       
                              <%
   String a = (String)request.getAttribute("message");
     if(a!=null)
     out.println("<FONT COLOR=#32CD32 size=5px><B><CENTER>" + a + "</CENTER></B></FONT>");   
%>                                                                               
       <%    
           try
           {
               Connection con=DBConnector.getConnection();
               Statement st=DBConnector.getStatement();
               String query="Select * from customers";
               ResultSet rs=st.executeQuery(query);
               %><table>
           <tr style="border: 2px solid black;">
               <th><%out.println("NAME");%></th>
               <th><%out.println("EMAIL_ID");%></th>
               <th><%out.println("BALANCE");%></th>
           <br>
           </tr>
          <%
               while(rs.next())
               {
                   %> <tr><%
                   %> <td><%out.println(rs.getString("Name"));%> </td><%
                   %> <td><%out.println(rs.getString("Email_ID"));%> </td><%
                   %> <td><%out.println(rs.getString("Current_Balance"));%> </td><%
                   %></tr><%
               }
       %></table><%
           }
           catch(Exception e)
           {
               System.out.println(e);
           }
       %>
       
       <footer style="margin-top: 7%; color:black;"><center>
        <p>&copy 2021. Made by <b>Dheeraj Joshi</b> <br> The Sparks Foundation</p>
</center>
</footer>
   </body>
</html>
