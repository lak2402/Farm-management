<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <style>
            body{
             background-image: url("images/plant.jpeg");
             background-color:white;
             background-size:contain;
             background-attachment: fixed;
                
            }
            
            
            .menu9{
                width:100%;
                background:none;
                overflow:auto;
                line-height: 10px;
                
            }
            .menu9 ul{
                margin:0;
                padding:0;
                list-style:none;
                line-height:40px;
            }
            .menu9 li{
                float:right;
            }
            .menu9 ul li a{
                background:goldenrod;
                text-decoration:none;
                width:400px;
                display:block;
                text-align:center;
                color:#f2f2f2;
                font-size:30px;
                font-family:serif;
                font-weight:normal;
                letter-spacing:0.5px;
                border-radius:40px;
                margin-right: 150px;
                line-height: 80px;
                
            }
            .menu9 li a:hover{
                color:#fff;
                opacity: 0.5;
                font-size:19px;
                
            }
            .menu9 p2{
                margin-right: -200px;
            }
             button{
                float:right;
                background:black;
                color:white;
                border-radius:0 5px 5px 0;
                cursor:pointer;
                position:relative;
                padding:7px;
                font-family:sans-serif;
                border:none;
                font-size:16px;
            }

            .menu3{
                width:100%;
               line-height: 20px;
                background:green;
                overflow:auto;
                
                
            }
            
            .menu3 h1{
                color:white;
                
                font-size:50px;
                margin-left:-300px;
           
                
            }
            
            
        </style>   
    </head>
    
    <body>  
        <nav class="menu3" > 
            <h1
                align="center"<big>CROPS</big>
            </h1>    
        </nav>
        <br>
        <br>
         <nav class="menu9">
        <ul>
         <li><a href="cropsinsert.jsp">INSERT CROPS</a></li>
        </ul>
         </nav>
        <br>
         <nav class="menu9">
        <ul>
         <li><a href="c_id.jsp">UPDATE CROPS</a></li>
        </ul>
         </nav>
        <br>
         <nav class="menu9">
        <ul>
         <li><a href="searchcrop.jsp">SEARCH CROPS</a></li>
        </ul>
         </nav>
        <br>
         <nav class="menu9">
        <ul>
         <li><a href="deletecrop.jsp">DELETE CROPS</a></li>
        </ul>
        <form action="home1.jsp">
            <tr><td><p2 align="right"><input type="submit" value="BACK"></p2></td></tr>
        </form>
         </nav>
    </body>
    
</html>
 