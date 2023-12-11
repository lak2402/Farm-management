<html>
    <%@page import="java.sql.*"%>
    <body>
        <% 
            //String crop_id=request.getParameter("crop_id");
            String pest_name=request.getParameter("pest_name");
            String pest_type=request.getParameter("pest_type");
            String pest_desc=request.getParameter("pest_desc");
            String pest_cost=request.getParameter("pest_cost");
            String crop_id1=request.getParameter("crop_id");
             String pest_id1=(String)session.getAttribute("pest_id");
           
          Connection con=null;
          
             try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
			
                        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
                  
                   
                 
                 PreparedStatement st=con.prepareStatement("update pesticides set pest_name=?,pest_type=?,pest_desc=?,pest_cost=?,crop_id=? where pest_id = '"+pest_id1+"' ");
                  //st.setString(1, crop_id);
                   st.setString(1, pest_name);
                    st.setString(2, pest_type);
                     st.setString(3, pest_desc);
                      st.setString(4, pest_cost);
                      st.setString(5, crop_id1);

                  
                   // st.setString(7, cprofile);
                      int n=st.executeUpdate();
            //out.println(n);
            
            %>
            <form action="pesticidespage.jsp" >
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
