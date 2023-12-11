<!DOCTYPE html>

<!--
To change this license header, choose License Headers in Project Properties.

To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    
<head>
        
<style>
           
 body
{

                
background-image: url("images/homepage.jpeg");
            
background-color:white;
             
background-size:cover;
             
background-attachment: fixed;
                
           
 }
            

.menu
{
                
width:100%;
               
background:brown;
                
overflow:auto;
                
            
}
           

.menu ul
{
                
margin:0;
                
padding:0;
                
list-style:none;
                
line-height:60px;
            
}
           

 .menu li
{
                
float:left;
            
}
            

.menu ul li a
{
                
background:brown;
                
text-decoration:none;
                
width:100px;
                
display:block;
                
text-align:center;
                
color:#f2f2f2;
               
font-size:23px;
                
font-family:sans-serif;
               
font-weight:bold;
                
letter-spacing:0.5px;
                
border-radius:5px;
                
margin-left:60px;
            
} 
          
    
 .menu li a:hover
{
               
color:#fff;
                
opacity: 0.5;
                
font-size:19px;
                
           
 }
            

.search-form
{
                
margin-top:15px;
                
float:right;
                
margin-right:100px;
                
            
}
            

input[type=text]
{
                
padding:7px;
                
border:none;
                
font-size:20px;
                
font-family:sans-serif;
                
            
}
            

button
{
                
float:right;
                
background:black;
                
color:white;
                
border-radius:0 5px 5px 0;
                
cursor:pointer;
                
position:relative;
                
padding:7px;
                
font-family:sans-serif;
                
border:none;
                
font-size:20px;
            
}
            

.menu1
{
                
width:100%;
               
line-height: 30px;
                
background:#960066;
                
overflow:auto;   
            
}
            
            

.menu1 h1
{
                
color:goldenrod;
                
font-size:40px;
                
margin-left:-300px;
            
}
            

.menu1 p
{
                
color:white;
               
font-size:25px;
                
margin-left:750px;
                
            
}
            

.me input[type=text]
{
           
border-radius:100px;
            
margin:5;
            
box-sizing:border-box;
            
border:0.02px solid black;
            
background:Hex Code RGB;
            
margin-right:200px;
             
width:250px;
            
height:35px;
            
font-size: 16px;
            
        
}
          

.me input[type=password]
{
            
border-radius:100px;
            
border: 0.02px solid black;
            
box-sizing: border-box;
            
width:250px;
            
height:35px;
            
        
}
       

</style>
       
</head>
    
<body>
  
          
<nav class="menu1"  > 
           
<h1>
<marquee >FARM  MANAGEMENT  SYSTEM</marquee>
</h1>
            
<p>
 <small>LET  US  HELP  YOU  TO  CHOOSE  RIGHT  CROPS</small></p>
        
</nav>
         

<nav class="menu">
       
<ul>
         
   <li><a href="homepage.jsp">HOME</a></li>
           
   <li><a href="customer.jsp">REGISTER</a></li>
          
</ul>
 
        
</nav>
       
 
<nav class="me">
           
<br>
            
<br>
           
 <form action="loginpage.jsp" method="post">
           
 <table align="center">
               
 <tr><td>EMAIL</td></tr>
               
 <tr><td><input type="text" name="email"</td></tr>
            
 <tr><td>PASSWORD</td></tr>
            
 <tr><td><input type="password" name="password"</td></tr>
           
<br>
            
<tr><td>TYPE</td></tr>
           
 <tr><td><br><select name="type">
                        
<option value="admin">ADMIN</option>
                        
<option value="customer">CUSTOMER</option>
                   
 </select>
                </td></tr>
            
<tr><td><br><br><input type="submit" value="LOGIN">
               
                   
 </form>
                       
                   
 </nav>
            
</table>
            
        
</nav>
    
</body>
    

</html>
 