<html>
    <%@page import="java.sql.*"%>
    <body>
        <%  String crop_id=(String)session.getAttribute("crop_id");
            String equi_id=request.getParameter("equi_id");
            String equi_name=request.getParameter("equi_name");
            String equi_type=request.getParameter("equi_type");
            String equi_desc=request.getParameter("equi_desc");
            String equi_cost=request.getParameter("equi_cost");
            String crop_id1=request.getParameter("crop_id");
          Connection con=null;
          
             try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
                 PreparedStatement st=con.prepareStatement("insert into equipments values(?,?,?,?,?,?)");
                  st.setString(1, equi_id);
                   st.setString(2, equi_name);
                     st.setString(3, equi_type);
                      st.setString(4, equi_desc);
                       st.setString(5, equi_cost);
                       st.setString(6,crop_id1);
                       //st.setString(6,c_id);
                         int n=st.executeUpdate();
            
             %>
            <form action="equipmentspage.jsp" >
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

