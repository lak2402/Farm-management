<%-- 
    Document   : patientreview
    Created on : 11 Nov, 2019, 11:39:45 AM
    Author     : user
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
h1 { font-family:Monotype Corsiva;
     text-align:center;
	 color:white;
	 font-size:30px;
   }
p  { color:black;
     font-family:Bahnschrift SemiBold SemiConden;
	 font-size:30px;
   }
body 
{
background-color:white;
background-image: url("images/image (49).jpeg");
background-repeat:no-repeat;

background-size:cover;
}


.button{
background-color:black;
color:white;
padding:15px 32px;
text-align:center;
display:inline-block;
font-size:15px;
margin:4px 2px;
text-decoration:none;
border-radius:12px;
}
.button:hover{
    background-color: white;
    color: black;
    cursor:pointer;
}
.search-form{
                margin-top:1px;
                float:right;
                margin-right:100px;
}
input[type=text]{
    width:200px;
    box-sizing: border-box;
    border: none;
    border-bottom: 1px solid white ;
    background-color: black;
    text-decoration: none;
    color:white;
    height:20px;
}
input[type=password]{
    width:150px;
    box-sizing: border-box;
    margin: 8px 0;
    background-color: black;
    text-decoration: none;
    border: none;
    border-bottom: 1px solid white ;
    color: white;
}
input type[text]{
    width:100%;
    background: transparent;
}
input type[Submit]{
    
    border:none;
}
.pos{
    width:350px;
    height:250px;
    background-color: lightgray;
    top:20%;
    left:25%;
    position: absolute;
    padding-top: 150px;
    border-radius: 12px;
    z-index: -1;
}
.logouser{
    width:100px;
    height:100px;
    top:25%;
    left:33%;
    position:absolute;
    background:transparent;
    border-radius: 20px;
}
table {
    font-family: arial,sans-serif;
    border-collapse: collapse;
    width: 100%;
    top:20%;
    position: absolute;
}
td, th {
    border: 1px solid #dddddd;
    text-allign: left;
    padding:8px;
}
tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
    </head>
    <body>
        <p style="text-align: center">
            CROPS LIST
        </p>
        <form class="search-form">
            <input type="text" placeholder="SEARCH">
            <button>Search</button>
        </form>
         <%  
            Connection con;
            try
            {
                //boolean value=false;
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
               // Statement st;
               // st=con.createStatement();
               // st.executeQuery("select * from customer");
                PreparedStatement ps=con.prepareStatement("select * from crop");
                
                ps.execute();
                
                ResultSet rs1=ps.executeQuery();
                  //rs1.first();
                  %>
               <table>
                  <tr>
                          <th>CROP_ID</th>
                          <th>CROP_NAME</th>
                          <th>CROP_TYPE</th>
                          <th>CROP_DESC</th>
                          <th>CROP_COST</th>
                        
                         
                   </tr>
                   
                   <%              
                  while(rs1.next())
                  {
                      %>
                      <tr>
                       <td> <%out.println(rs1.getInt(1));%></td>
                       <td><% out.println(rs1.getString(2));%></td>
                       <td><%out.println(rs1.getString(3));%></td>
                      <td><%out.println(rs1.getString(4));%></td>
                      <td><%out.println(rs1.getString(5));%></td>
                      
                      </tr>
                  
                     <% 
                  }
                  %>
                  </table>
                  <%
            }
                  catch(Exception e)
                          {
                          System.out.print(e);
                          }
                  %>
                  
    </body>
</html>
