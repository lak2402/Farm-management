<html>
    <%@page import ="java.sql.*" %>
    <body>
<%
   String id=request.getParameter("c_id");
   String name=request.getParameter("name");
   String address=request.getParameter("address");
   String phone_no=request.getParameter("phone_no");
    String email=request.getParameter("email");
   String pass=request.getParameter("password");
       Connection con=null;
   try{
       Class.forName("oracle.jdbc.driver.OracleDriver");
       con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rekha","monika");
       PreparedStatement ps=con.prepareStatement("insert into customer values(?,?,?,?,?,?)");
       ps.setString(1,id);
       ps.setString(2,name);
       ps.setString(3,address);
       ps.setString(4,phone_no);
       ps.setString(5,email);
       ps.setString(6,pass);
       int x=ps.executeUpdate();
       %>
       <form action="homepage.jsp">
           <h1 align="center" > Registered Successfully</h1>
           <p align="center"><input type="submit" value="Back"></p>
       </form>
       <%
       
   }
   catch(Exception e){
       out.println("USER ALREADY EXITS");
}
   
       %>
</body>
</html>