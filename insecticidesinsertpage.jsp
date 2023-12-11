<html>
    <%@page import="java.sql.*"%>
    <body>
        <%  String crop_id=(String)session.getAttribute("crop_id");
            String ins_id=request.getParameter("ins_id");
            String ins_name=request.getParameter("ins_name");
            String ins_type=request.getParameter("ins_type");
            String ins_desc=request.getParameter("ins_desc");
            String ins_cost=request.getParameter("ins_cost");
            String crop_id1=request.getParameter("crop_id");
          Connection con=null;
          
             try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
                 PreparedStatement st=con.prepareStatement("insert into insecticides values(?,?,?,?,?,?)");
                  st.setString(1, ins_id);
                   st.setString(2, ins_name);
                     st.setString(3, ins_type);
                      st.setString(4, ins_desc);
                       st.setString(5, ins_cost);
                       st.setString(6,crop_id1);
                       //st.setString(6,c_id);
                         int n=st.executeUpdate();
            
             %>
            <form action="insecticidespage.jsp" >
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

