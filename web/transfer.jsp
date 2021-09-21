<%@page import="db.DBConnector"%>
<%@ page import="java.sql.*" %>
<html>
   <head>
       <title>
           View Customers
       </title>
<style>




/* styling */

@import url("https://fonts.googleapis.com/css2?family=Lato:wght@300;400&display=swap");

.button {
  border: none;
  outline: none;
  background-color: purple;
  padding: 0.3rem 0.8rem 0.3rem 0.8rem;
  position: relative;
  border-radius: 8px;
  letter-spacing: 0.7px;
  background-color: #5086bd;
  color: #fff;
  font-size: 15px;
  font-family: "Lato", sans-serif;
  cursor: pointer;
  box-shadow: rgba(0, 9, 61, 0.2) 0px 4px 8px 0px;
}

.button:active {
  transform: translateY(1px);
}

.button__svg {
  position: absolute;
  overflow: visible;
  bottom: 6px;
  right: 0.2rem;
  height: 110%;
}

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
       <center><h1 style="font-family:Garamond; font-size: 40px; color:black; font-weight: bolder;  margin-top: 2%;margin-bottom: 2%;" ><u>CUSTOMER LIST :</u></h1></center>
        

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
               <th><%out.println("CURRENT BALANCE");%></th>
               <th><%out.println("TRANSFER MONEY");%></th>
           <br>
           </tr>
          <%
               while(rs.next())
               {
                   %> <tr><%
                   %> <td><%out.println(rs.getString("Name"));%> </td><%
                   %> <td><%out.println(rs.getString("Email_ID"));%> </td><%
                   %> <td><%out.println(rs.getString("Current_Balance"));%> </td>
                     <td><a href="send.jsp?email=<%=rs.getString("Email_ID")%>"><button class="button">
  <span class="button__text">
    Transact
  </span>
    
</button>
                         
                   </a></td>
                   </tr><%
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














 