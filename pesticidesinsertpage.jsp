<html>
    <%@page import="java.sql.*"%>
    <body>
        <%  String crop_id=(String)session.getAttribute("crop_id");
            String pest_id=request.getParameter("pest_id");
            String pest_name=request.getParameter("pest_name");
            String pest_type=request.getParameter("pest_type");
            String pest_desc=request.getParameter("pest_desc");
            String pest_cost=request.getParameter("pest_cost");
            String crop_id1=request.getParameter("crop_id");
           
          Connection con=null;
          
             try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
                 PreparedStatement st=con.prepareStatement("insert into pesticides values(?,?,?,?,?,?)");
                  st.setString(1, pest_id);
                   st.setString(2, pest_name);
                     st.setString(3, pest_type);
                      st.setString(4, pest_desc);
                       st.setString(5, pest_cost);
                       st.setString(6,crop_id1);
                         int n=st.executeUpdate();
            
             %>
            <form action="pesticidespage.jsp" >
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

