<html>
    <head>
    <body>
    </body>
    </head>
    <br><br>
    <style>
        body{
             background:white;
                margin:0;
                
            }
       .m8{
                width:100%;
                text-align:center;
                background:palegoldenrod;
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
   
       <form action="insecticidesinsertpage.jsp" method="post">
         <table align="center">
             
             <h1>INSERT NEW INSECTICIDES</h1>
             <br>
             
             <tr><td>ID</td></tr> 
             
             <tr><td><input type="text" name="ins_id"></td></tr>
             
             <tr><td>NAME</td></tr>  
             
             <tr><td><input type="text" name="ins_name"></td></tr>
             
             <tr><td>TYPE</td></tr>
             <tr><td><select name="ins_type">
                                         <option value="Organic Insecticides">Organic Insecticides</option>
                                         <option value="Inorganic Insecticides">Inorganic Insecticides</option>
                                         <option value="Systematic insecticides">Systematic Insecticides</option>
                                         <option value="Contact Insecticides">Contact Insecticides</option>
                                         
                         </select>
                                 </td></tr>
            
            <tr><td>DESCRIPTION</td></tr>
            <tr><td><input type="text" name="ins_desc"></td></tr>
           
            
            <tr><td>COST</td></tr>       
            <tr><td><input type="text" name="ins_cost" ></td></tr>
            
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
