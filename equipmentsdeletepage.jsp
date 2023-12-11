
<html>
    <%@page import="java.sql.*"%>
    <body>
        <%  String equi_id1=request.getParameter("equi_id");
           session.setAttribute("equi_id",equi_id1);
           //out.println(crop_id);
           
          Connection con=null;
          
             try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
                        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
                 PreparedStatement st=con.prepareStatement("delete from equipments where  equi_id='"+equi_id1+"'");
                  int n=st.executeUpdate();
            
             %>
            <form action="insecticidespage.jsp" >
            <h1 align="center">Deleted  successfully</h1>
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

