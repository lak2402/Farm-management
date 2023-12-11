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
             background-image: url("images/equi1.jpeg");
             background-color:white;
             background-size:cover;
             background-attachment: fixed;
             background-repeat: no-repeat;
                
            }
            
            
            .menu11{
                width:105%;
                background:none;
                overflow:auto;
                line-height: 10px;
                
            }
            .menu11 ul{
                margin:0;
                padding:0;
                list-style:none;
                line-height:40px;
            }
            .menu11 li{
                float:right;
            }
            .menu11 ul li a{
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
            .menu11 li a:hover{
                color:#fff;
                opacity: 0.5;
                font-size:19px;
                
            }
            .menu11 p2{
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

            .menu12{
                width:100%;
               line-height: 20px;
                background:green;
                overflow:auto;
                
                
            }
            
            .menu12 h1{
                color:white;
                
                font-size:50px;
                margin-left:-300px;
           
                
            }
            
            
        </style>   
    </head>
    
    <body>  
        <nav class="menu12" > 
            <h1
                align="center"<big>EQUIPMENTS</big>
            </h1>    
        </nav>
        <br>
        <br>
         <nav class="menu11">
        <ul>
         <li><a href="equipmentsinsert.jsp">INSERT EQUIPMENTS</a></li>
        </ul>
         </nav>
        <br>
         <nav class="menu11">
        <ul>
         <li><a href="equi_id.jsp">UPDATE EQUIPMENTS</a></li>
        </ul>
         </nav>
        <br>
         <nav class="menu11">
        <ul>
         <li><a href="searchequipments.jsp">SEARCH EQUIPMENTS</a></li>
        </ul>
         </nav>
        <br>
         <nav class="menu11">
        <ul>
         <li><a href="deleteequipments.jsp">DELETE EQUIPMENTS</a></li>
        </ul>
        <form action="home1.jsp">
            <tr><td><p2 align="right"><input type="submit" value="BACK"></p2></td></tr>
        </form>
         </nav>
    </body>
    
</html>
 