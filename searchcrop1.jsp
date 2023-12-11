<html>
    <%@page import="java.sql.*"%>
    <body>
        <% 
            String crop_id=request.getParameter("crop_id");
            String crop_name=request.getParameter("crop_name");
            String crop_type=request.getParameter("crop_type");
            String crop_desc=request.getParameter("crop_desc");
            String crop_cost=request.getParameter("crop_cost");
             String crop_id1=(String)session.getAttribute("crop_id");
           
          Connection con=null;
          
             try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
			
                        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
                  
                   
                 
                 PreparedStatement st=con.prepareStatement("select  crop_id crop_name,crop_type,crop_desc,crop_cost from crop where crop_id = '"+crop_id1+"' ");
                  st.setString(1, crop_id);
                   st.setString(2, crop_name);
                    st.setString(3, crop_type);
                     st.setString(4, crop_desc);
                      st.setString(5, crop_cost);
                      int n=st.executeUpdate();
             }
             

        catch(Exception e)
{
    out.println("error"+e);
}%>
    </body>
</html>
