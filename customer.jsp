
<html>
    <head>
    <body>
       
    </body>
    </head>
    <style>
        body{
            background-image: url("images/heap.jpg");
            background-color: white;
            background-size: cover;
            
        }
        .menu{
            width: 100%;
            height: 18%;
            background:goldenrod;
            font-size: 30px;
            color: white;
            
        }
        
     
       
        .menu5{
            background:none;
            color:black;
            
        }
        
        .menu5 table,h1{
              height:2%;
                margin-right:400px;
                 color:white;
                 
                
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
                font-size:20px;
            }
            .menu5 input[type=text]{
             border-radius:100px;
            margin:0;
            box-sizing:border-box;
            border:0.01px solid black;
            background:Hex Code RGB;
            width: 190px;
            height: 30px;
            
        
          .menu5 input[type=password]{
            border-radius:100px;
            border: 0.01px solid black;
            width:250px;
            height:35px;
            
          }

        
    </style>
    <body>
        <nav class="menu">
            <h1
                align="center"><big>FARM  MANAGEMENT  SYSTEM</big>
            </h1>
        </nav>
        <nav class="menu5">
        
         <form action="customerregister.jsp" method="post">
             <table align="center" >
             
             <h1>REGISTER</h1>
           
                 <tr><td>ENTER ID</td></tr>
                 <tr><td><input type="text" name="c_id"></td></tr>
            <tr><td>
                    NAME</td></tr>
            <tr><td><input type="text" name="name"></td></tr>
            <tr><td>
                    ADDRESS</td></tr>
            <tr><td><input type="text" name="address"></td></tr>
            
            <tr><td>
                    PHONE NUMBER</td></tr>
            <tr><td><input type="text" name="phone_no"></td></tr>
            
            <tr><td>
                    EMAIL</td></tr>
            <tr><td><input type="text" name="email"></td></tr>

            
            
            <tr><td> ENTER PASSWORD</td></tr>
                <tr><td><input type="text" name="password"></td></tr> 
              </table>
            <p align="center"><input type="submit" value="SUBMIT"></p>`
                  </form>
            <form action="homepage.jsp">
                <tr><td><p1 align="right"><input type="submit" value="BACK"></p2></tr></td>
            </form>
     
                  </body>
</nav>
</html>
