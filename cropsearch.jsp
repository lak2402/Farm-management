

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>

    
    <body>
        <% 
            //String crop_id=request.getParameter("crop_id");
            String crop_name=request.getParameter("crop_name");
            String crop_type=request.getParameter("crop_type");
            String crop_desc=request.getParameter("crop_desc");
            String crop_cost=request.getParameter("crop_cost");
             String crop_id1=(String)session.getAttribute("crop_id");
           
          
          
             try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
			
                    Connection    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
                  String s=request.getParameter("crop_id");
                  String s1="'"+s+"'";
                     Statement st=con.createStatement();
                     ResultSet rs=st.executeQuery("select crop_id,crop_name,crop_type,crop_desc,crop_cost from crop where crop_id="+s1);
                     while(rs.next())
                     {
                         String ss1=rs.getString("CROP_ID");
                         String ss2=rs.getString("CROP_NAME");
                         String ss3=rs.getString("CROP_TYPE");
                         String ss4=rs.getString("CROP_DESC");
                         String ss5=rs.getString("CROP_COST");
                         out.println(ss1+ss2+ss3+ss4+ss5);
                                                   
                     }
             }
             catch(SQLException e)
             {
                 out.println("");
             }
            %>
           
    </body>
</html>
