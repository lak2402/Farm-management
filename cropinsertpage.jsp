<html>
    <%@page import="java.sql.*"%>
    <body>
        <%  //String c_id=(String)session.getAttribute("c_id");
            String crop_id=request.getParameter("crop_id");
            String crop_name=request.getParameter("crop_name");
            String crop_type=request.getParameter("crop_type");
            String crop_desc=request.getParameter("crop_desc");
            String crop_cost=request.getParameter("crop_cost");
           
          Connection con=null;
          
             try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
                 PreparedStatement st=con.prepareStatement("insert into crop values(?,?,?,?,?)");
                  st.setString(1, crop_id);
                   st.setString(2, crop_name);
                     st.setString(3, crop_type);
                      st.setString(4, crop_desc);
                       st.setString(5, crop_cost);
                       //st.setString(6,c_id);
                         int n=st.executeUpdate();
            
             %>
            <form action="croppage.jsp" >
            <h1 align="center">Inserted successfully</h1>
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

