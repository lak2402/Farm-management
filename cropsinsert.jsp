<html>
    <head>
    <body>
    </body>
    </head>
    <br><br>
    <style>
        body{
            
            background-image: url("images/images (55).jpeg");
            background-size: calc;
            background-attachment: fixed;
            background-repeat: round;
            margin:0;
                
            }
       .m8{
                width:100%;
                text-align:center;
                background: none;
                overflow:auto;
                
            }
        
        .m8 table,h1{
              height:2%;
                margin-left:100px ;
                
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
        button{
                float:center;
                background:black;
                color:white;
                border-radius:0 5px 5px 0;
                cursor:pointer;
                position:relative;
                padding:7px;
                font-family:sans-serif;
                border:none;
                font-size:16px;
                border-radius: 15px;
            }
        .m8 select{
               border-radius:200px;
            width:250px;
            height:40px;
            
        }
        .m8 input[type=submit]{
            margin-left:100px;
        }
    </style>
     <body>
    <nav class="m8">
   
       <form action="cropinsertpage.jsp" method="post">
         <table align="center">
             
             <h1>INSERT NEW CROPS</h1>
             <br>
             
             <tr><td>ID</td></tr> 
             
             <tr><td><input type="text" name="crop_id"></td></tr>
             
             <tr><td>NAME</td></tr>  
             
             <tr><td><input type="text" name="crop_name"></td></tr>
             
             <tr><td>TYPE</td></tr>
             <tr><td><select name="crop_type">
                                         <option value="Rabi Crop">Rabi Crop</option>
                                         <option value="Kharif Crop">Kharif Crop</option>
                                         <option value="Zaid Crop">Zaid Crop</option>
                                         <option value="Plantation crop">Plantation Crop</option>
                                         
                         </select>
                                 </td></tr>
            
            <tr><td>DESCRIPTION</td></tr>
            <tr><td><input type="text" name="crop_desc"></td></tr>
           
            
            <tr><td>COST</td></tr>       
            <tr><td><input type="text" name="crop_cost" ></td></tr>
            
           
            
              </table>
           <br>
           <br>
        
           <button>INSERT</button>          
                  </form>
        <form action="croppage.jsp">
            
            <button>BACK</button>
        </form>
    </nav>
    </body>
</html>
