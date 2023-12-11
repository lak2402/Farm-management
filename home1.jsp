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
             background-image: url("images/images (45).jpeg");
             background-color:white;
             background-size:cover;
             background-attachment: fixed;
                
            }
            .menu{
                width:100%;
                background:green;
                overflow:auto;
                
            }
            .menu ul{
                margin:0;
                padding:0;
                list-style:none;
                line-height:60px;
            }
            .menu li{
                float:left;
            }
            .menu ul li a{
                background:green;
                text-decoration:none;
                width:130px;
                display:block;
                text-align:center;
                color:#f2f2f2;
                font-size:18px;
                font-family:sans-serif;
                font-weight:bold;
                letter-spacing:0.5px;
                border-radius:5px;
                margin-left:60px;
                
               

}
                
            
            .menu li a:hover{
                color:#fff;
                opacity: 0.5;
                font-size:19px;
                
            }
            .search-form{
                margin-top:15px;
                float:right;
                margin-right:100px;
                
            }
            input[type=text]{
                padding:7px;
                border:none;
                font-size:16px;
                font-family:sans-serif;
                
            }
            button{
                float:right;
                background:none;
                color:white;
                border-radius:0 5px 5px 0;
                cursor:pointer;
                position:relative;
                padding:7px;
                font-family:sans-serif;
                border:none;
                font-size:16px;
            }
            .menu1{
                width:100%;
               line-height: 10px;
                background-color:yellowgreen;
                overflow:auto;
                
                
            }
            
            .menu1 h1{
                color:white;
                
                font-size:50px;
                margin-left:-300px;
           
                
            }
            .menu1 p{
                color:white;
               font-size:30px;
                margin-left:900px;
                
            }
            .me input[type=text]{
           border-radius:100px;
            margin:0;
            box-sizing:border-box;
            border:0.01px solid black;
            background:Hex Code RGB;
            margin-right:200px;
             width:250px;
            height:35px;
            
        }
          .me input[type=password]{
            border-radius:100px;
            border: 0.01px solid black;
            width:250px;
            height:35px;
            
        }

        
            </style>
            
    </head>
    <body>
            
       
        <nav class="menu1"  > 
            <h1 align="center"><big>FARM  MANAGEMENT  SYSTEM</big></h1>
            <p><small>LET  US  HELP FARMERS </small></p>
        </nav> 
         <nav class="menu">
        <ul>
            <li><a href="aboutpage.jsp">ABOUT</a></li>          
            <li><a href="croppage.jsp">CROPS</a></li>
            <li><a href="pesticidespage.jsp">PESTICIDES</a></li>
            <li><a href="insecticidespage.jsp">INSECTICIDES</a></li>
            <li><a href="equipmentspage.jsp">EQUIPMENTS</a></li>
            <li><a href="backend.jsp">CUSTOMERS</a></li>
            </ul>
          <form action="homepage.jsp" method="post">
            <button>BACK</button>
        </form>
            </table>
        </nav>
        
    </body>
    
</html>
 