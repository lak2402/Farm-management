
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
             background-image: url("images/images (54).jpeg");
             background-size: cover;
             margin:0;
                
            }
             .mi1{
                width:100%;
                text-align:center;
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
          String pest_id1=request.getParameter("pest_id");
          session.setAttribute("pest_id", pest_id1);
            Connection con=null;
           
             try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
			
                        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
                        Statement st=con.createStatement();
                        
                   rs1=st.executeQuery( "Select * from pesticides where pest_id = '"+pest_id1+"' ");
                        rs1.next();
                       // PreparedStatement ps=con.prepareStatement("select * from crop where crop_id='"+crop_id1+"' ");
                
                //ps.execute();
                
                 //rs1=ps.executeQuery();
      
                      
                              
                         
             }
        catch(Exception e){
                                out.println(e);
        }
           %> 
           <form action="pesticidesdeletepage.jsp" method="post"> 
               <table align="center">     
                   <h1 align="center">DELETE PESTICIDES</h1>
                   <br>
              <tr><td>NAME</td></tr>
              <tr><td><input type="text" name="pest_name" value="<%=rs1.getString(2)%>"></td></tr>
             
              <tr><td>TYPE</td></tr>
              <tr><td><input type="text" name="pest_type" value="<%=rs1.getString(3)%>"></td></tr>
          
              <tr><td>DESCRIPTION</td></tr>
              <tr><td><input type="text" name="pest_desc" value="<%=rs1.getString(4)%>"></td></tr>
  
              <tr><td> COST</td></tr>
            <tr><td><input type="text" name="pest_cost" value="<%=rs1.getString(5)%>"></td></tr>
            <br>
               </table>
            <br>
            <button>DELETE</button>
           </form>    
        </nav>  
    
               
    </body>
</html>
     <table>
             
           