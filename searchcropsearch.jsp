
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
       
    <body>
    </body>
    </head>
    <body>
       
          <style>
            body{
             background:white;
                margin:0;
                
            }
             .mi1{
                width:100%;
                text-align:center;
                background:white;
                overflow:auto;
                
            }
            .mil table,h1{
              height:2%;
                margin-left:30px ;
            }
            button{
                float:center;
                background:black;
                color:white;
                border-radius:0 5px 5px 0;
                cursor:pointer;
                position:relative;
                padding:7px;
                font-family:sans-serif;
                border:none;
                font-size:20px;
                border-radius: 100px;
            }

             .mi1 input[type=text]{
             border-radius:100px;
            margin:0;
            box-sizing:border-box;
            border:0.01px solid black;
            background:Hex Code RGB;
            width:250px;
            height:40px;
            
        }
          .mi1 input[type=password]{
            border-radius:200px;
            width:300px;
            height:40px;
            
        }
        .mi submit{
            border-radius:200px;
            width:300px;
            height:40px;
            margin-left: 100px;
        }
            </style>
             
    
        <nav class="mi1"> 
            <br>
         <%!ResultSet rs1;%>   
       <% 
          String crop_id1=request.getParameter("crop_id");
          session.setAttribute("crop_id", crop_id1);
            Connection con=null;
           
             try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
			
                        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
                        Statement st=con.createStatement();
                        
                   rs1=st.executeQuery( "Select * from crop where crop_id = '"+crop_id1+"' ");
                        rs1.next();           
             }
        catch(Exception e){
                                out.println(e);
        }
           %> 
           <form action="cropsearch1.jsp" method="post"> 
               <table align="center"  >   
              <br>
              <h1> CROP DETAILS</h1>
              <br>
              <tr><td>CROP_ID</td></tr>
              <tr><td><input type="text" name="crop_id" value="<%=rs1.getString(1)%>"></td></tr>

              <tr><td>NAME</td></tr>
              <tr><td><input type="text" name="crop_name" value="<%=rs1.getString(2)%>"></td></tr>
             
              <tr><td>
                    TYPE</td></tr>
            <tr><td><input type="text" name="crop_type" value="<%=rs1.getString(3)%>"></td></tr>
          
              <tr><td>DESCRIPTION</td></tr>
                <tr><td><input type="text" name="crop_desc" value="<%=rs1.getString(4)%>"></td></tr>
  
              <tr><td> COST</td></tr>
            <tr><td><input type="text" name="crop_cost" value="<%=rs1.getString(5)%>"></td></tr>
               </table>
               <br>
           </form>
                <form action="croppage.jsp">
            
                    <button>BACK</button>
        </form>
               </nav>
                
               
    </body>
</html>
             
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             