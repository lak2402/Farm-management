<html>
    <head>
    <body>
    </body>
    </head>
    <br><br>
    <style>
        body{
             background-image: url("images/images (5).jpeg");
             background-size: calc;
                margin:0;
                
            }
       .m8{
                width:100%;
                text-align:center;
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
   
       <form action="pesticidesinsertpage.jsp" method="post">
         <table align="center">
             
             <h1>INSERT NEW PESTICIDES</h1>
             <br>
             
             <tr><td>ID</td></tr> 
             
             <tr><td><input type="text" name="pest_id"></td></tr>
             
             <tr><td>NAME</td></tr>  
             
             <tr><td><input type="text" name="pest_name"></td></tr>
             
             <tr><td>TYPE</td></tr>
             <tr><td><select name="pest_type">
                                         <option value="Herbicides">Herbicides</option>
                                         <option value="Bactericides">Bactericides</option>
                                         <option value="fungicides">Fungicides</option>
                                         <option value="Larvicides">Larvicides</option>
                                         
                         </select>
                                 </td></tr>
            
            <tr><td>DESCRIPTION</td></tr>
            <tr><td><input type="text" name="pest_desc"></td></tr>
           
            
            <tr><td>COST</td></tr>       
            <tr><td><input type="text" name="pest_cost" ></td></tr>
            
            <tr><td>CROP_ID</td></tr>       
            <tr><td><input type="text" name="crop_id" ></td></tr>
            
           
            
              </table>
           <br>
           <br>
        
            <input type="submit" value="INSERT">
                  </form>
    </nav>
    </body>
</html>
