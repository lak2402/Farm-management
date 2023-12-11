<html>
    <%@page import="java.sql.*"%>
    <body>
        <% 
            //String crop_id=request.getParameter("crop_id");
            String crop_name=request.getParameter("crop_name");
            String crop_type=request.getParameter("crop_type");
            String crop_desc=request.getParameter("crop_desc");
            String crop_cost=request.getParameter("crop_cost");
             String crop_id1=(String)session.getAttribute("crop_id");
           
          Connection con=null;
          
             try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
			
                        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
                  
                   
                 
                 PreparedStatement st=con.prepareStatement("update crop set crop_name=?,crop_type=?,crop_desc=?,crop_cost=? where crop_id = '"+crop_id1+"' ");
                   st.setString(1, crop_name);
                    st.setString(2, crop_type);
                     st.setString(3, crop_desc);
                      st.setString(4, crop_cost);
                      int n=st.executeUpdate();
            
            %>
            <form action="croppage.jsp" >
            <h1 align="center">Updated successfully</h1>
            <p align="center"><input type="submit" value="Back"></p>
    </form>
            <%
             }
        catch(Exception e)
{
    out.println("error"+e);
}%>
    </body>
</html>
