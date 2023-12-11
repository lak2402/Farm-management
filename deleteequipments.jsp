<html>
    <head>
    <body>
    </body>
    </head>
    <br><br>
    <style>
        body{
            background-image: url("images/heap.jpg");
            background-size: contain;
             background:goldenrod;
                margin:0;
                
            }
       .m8{
                width:100%;
                text-align:center;
                background:none;
                overflow:auto;
            }
        
        .m8 table,h1{
              height:2%;
                margin-left :100px ;
                
        }
        .m8 input[type=text]{
             border-radius:100px;
            margin:0;
            box-sizing:border-box;
            border:0.05px solid black;
            background:Hex Code RGB;
             width:250px;
            height:40px;
            
        }
        .m8 select{
               border-radius:200px;
            width:250px;
            height:40px;
            
        }
        .m8 input[type=submit]{
            margin-left:100px;
        }
        button{
                background:black;
                color:white;
                border-radius:0 5px 5px 0;
                cursor:pointer;
                position:relative;
                padding:7px;
                font-family:sans-serif;
                border:none;
                font-size:16px;
                border-radius: 40px;
                margin-left: 100px;
            }
    </style>
     <body>
    <nav class="m8">
   
       <form action="equipmentsdeletepage.jsp" method="post">
         <table align="center" border="2">
             <br>
             <h1>DELETE EQUIPMENTS</h1>
             <br>
             <br>
             <tr><td>EQUI_ID</td></tr> 
             <br>
             <tr><td><input type="text" name="equi_id"></td></tr>
             
            
         </table>
           <br>
           <br>
           <br>
           <br>
        
                <button>DELETE</button>
        </form>
    </nav>
    </body>
</html>
