<html>
    <%@page import="java.sql.*"%>
    <body>
        <% 
            //String crop_id=request.getParameter("crop_id");
            String equi_name=request.getParameter("equi_name");
            String equi_type=request.getParameter("equi_type");
            String equi_desc=request.getParameter("equi_desc");
            String equi_cost=request.getParameter("equi_cost");
            String crop_id=request.getParameter("crop_id");
             String equi_id1=(String)session.getAttribute("equi_id");
           
          Connection con=null;
          
             try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
			
                        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
                  
                   
                 
                 PreparedStatement st=con.prepareStatement("update equipments set equi_name=?,equi_type=?,equi_desc=?,equi_cost=?,crop_id=? where equi_id = '"+equi_id1+"' ");
                  //st.setString(1, crop_id);
                   st.setString(1, equi_name);
                    st.setString(2, equi_type);
                     st.setString(3, equi_desc);
                      st.setString(4, equi_cost);
                      st.setString(5, crop_id);

                  
                   // st.setString(7, cprofile);
                      int n=st.executeUpdate();
            //out.println(n);
            
            %>
            <form action="equipmentspage.jsp" >
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
