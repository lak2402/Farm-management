
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <body>
       <%String type=request.getParameter("type");
       String email=request.getParameter("email");
        String password=request.getParameter("password");
       String admin="admin";
       String customer="customer";
       
      if(type.equals(admin))
      {
          
            Connection con=null;
           
             try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
			
                        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
                        Statement st=con.createStatement();
                        
                        ResultSet rs=st.executeQuery( "Select * from admin where email = '"+email+"' " +
				 		"and " +
				 		"password = '"+password+"' ");
                        if(rs!=null && rs.next())
                        {   
                           session.setAttribute("email", email);
                                response.sendRedirect("home1.jsp");
                        }
                        
             else{
                     out.println("sorry doesn't exist user");
                     }
             }
                        catch(Exception e){
                                out.println("check password");
                                }
          
      }
      else if(type.equals(customer))
      {
                 
           Connection con=null;
           
             try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
			
                        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
                        Statement st=con.createStatement();
                        
                        ResultSet rs=st.executeQuery( "Select * from customer where email = '"+email+"' " +
				 		"and " +
				 		"password = '"+ password+"' ");
                        if(rs!=null && rs.next()){
                          session.setAttribute("email", email);
                             response.sendRedirect("customernextpage.jsp");
                        }
                        
             else{
                     out.println("sorry doesn't exist user");
                     }
             }
                        catch(Exception e){
                                out.println("check password");
                                }
          
      }
     
       %>
       
    </body>
</html>
