
<html>
    <%@page import="java.sql.*"%>
    <body>
        <%  String ins_id1=request.getParameter("ins_id");
           session.setAttribute("ins_id",ins_id1);
           //out.println(crop_id);
           
          Connection con=null;
          
             try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
                        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
                 PreparedStatement st=con.prepareStatement("delete from insecticides where  ins_id='"+ins_id1+"'");
                  int n=st.executeUpdate();
            
             %>
            <form action="equipmentspage.jsp" >
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

