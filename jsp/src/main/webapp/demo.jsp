
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body
{
  background-image: url('https://www.orissapost.com/wp-content/uploads/2020/08/amps-watts-1.jpg');
  background-repeat: no-repeat;
}

body{
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
   
    
}

.container{
    width: 45%;
    background: white;
    border-radius: 10px;
    padding: 15px 30px;
    display: flex;
    flex-direction: column;
    flex-wrap: wrap;
}

.container h1{
    text-align: center;
    font-weight: 600;
    margin-bottom: 30px;
}

.container form .row{
    display: flex;
}

.container form .row .field{
    width: 100%;
    position: relative;
    margin: 0 30px 30px 0;
}

.container form .row .field input{
    display: block;
    width: 100%;
    height: 40px;
    border: none;
    border-bottom: 2px solid gray;
    outline: none;
    font-size: 16px;
}

.container form .row .message input{
    height: 60px;
} 

.container form .row .field input:focus{
    border-color:#390099 ;
}

.container form .row .field label{
    position: absolute;
    bottom: 10px;
    left: 0;
    pointer-events: none;
    font-size: 16px;
    transition: 0.3s;
}



.container form input[type=submit]{
    padding: 7px 20px;
    outline: none;
    border-radius: 15px;
    background: #0ead69;
    border: none;
    color: white;
    cursor: pointer;
    font-size: 18px;
}

@media (max-width:1024px){
    .container{
        width: 80%;
    }
}

@media (max-width:768px){
    .container{
        width: 90%;
    }
}

@media (max-width:650px){
    .container{
        width: 95%;
    }
    .container form .row{
        display: block;
    }
}
.filed{

font-size: 18px;
display: block;
   padding: 7px 40px;

}

.container form .field{
    height: 40px;
    margin-bottom: 15px;
    position: relative;
}

.container form .field input{
    height: 100%;
    width: 100%;
    border-radius: 5px;
    font-size: 16px;
    border: 1px solid gray;
    outline: none;
    padding-left: 60px;
}

.container form .field i{
    position: absolute;
    width: 50px;
    height: 100%;
    background: #01497c;
    text-align: center;
    line-height: 40px;
    font-size: 20px;
    color: white;
    border-radius: 5px 0 0 5px;
}
.container form .register button{
    margin-top: 2px;
    width: 50%;
    border-radius: 1px;
    outline: none;
    border: 1px solid gray;
    padding: 5px 0;
    cursor: pointer;
    color: white;
    font-size: 20px;
    background: #01497c;
}

</style>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Link Mobile Number</title>
</head>
<body>

    <div class="container">
        <h2>Customer Mobile Details</h2><br>
        <form action="/set-contant" method="post">
            <table border="1" cellpadding="5" width="500">
               <tr>
                   <td>Service Number</td><br>
                   <td>Phone Number</td>
               </tr>
            </table><br><br><br>
            
            <h2>Update Mobile Details</h2><br> 
            <tr> 
            <div class="field">
                <i class="fa fa-phone"></i>
                <input type="text" name="phone" id="phone" placeholder="Enter Mobile No" required="">
            </div>
            <div class="register">
               <center> <button type="submit">Update</button></center>
            </div>
            </tr>
            </table>
        </form>
    </div>
    
</body>
</html>