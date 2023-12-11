<html>
    <%@page import="java.sql.*"%>
    <body>
        <% 
            //String crop_id=request.getParameter("crop_id");
            String ins_name=request.getParameter("ins_name");
            String ins_type=request.getParameter("ins_type");
            String ins_desc=request.getParameter("ins_desc");
            String ins_cost=request.getParameter("ins_cost");
            String crop_id=request.getParameter("crop_id");
             String ins_id1=(String)session.getAttribute("ins_id");
           
          Connection con=null;
          
             try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
			
                        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
                  
                   
                 
                 PreparedStatement st=con.prepareStatement("update insecticides set ins_name=?,ins_type=?,ins_desc=?,ins_cost=?,crop_id=? where ins_id = '"+ins_id1+"' ");
                  //st.setString(1, crop_id);
                   st.setString(1, ins_name);
                    st.setString(2, ins_type);
                     st.setString(3, ins_desc);
                      st.setString(4, ins_cost);
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
