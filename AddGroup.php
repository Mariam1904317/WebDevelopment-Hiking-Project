<?php
include "menugroup.php";
include "dB.php";
 
 // insert
 if(isset($_POST['insert']))
 {
     if($_POST['Taxes'] > 18){
       echo '<script>alert("Error, The number should be 18 or less")</script>';
       return;
     }
      $insertQuery = "INSERT INTO `groups`(`groupName`, `groupLocation`, `groupDescription`, `groupDifficulty`, `groupImage`, `groupDistance`, `groupDuration`, `Taxes`) VALUES 
      ('$_POST[groupName]','$_POST[groupLocation]', '$_POST[groupDescription]', '$_POST[groupDifficulty]', '$_POST[groupImage]', '$_POST[groupDistance]', '$_POST[groupDuration]', '$_POST[Taxes]')";
     try
  {
     $insertResult = mysqli_query($conn, $insertQuery);
     
     if($insertResult)
     {
         if(mysqli_affected_rows($conn) > 0){
             print "data inserted";
         }else{
             print "data not inserted";
         }
     }
 }catch(Exception $ex){
       print "error insert" .$ex->getMessage();  
     }
 }
?>
<html>
 <head> 
  <title> AddGroup </title>
  <style>
        <?php include "Styles/addgroupcss.css";?>
    </style>
    <link rel="stylesheet" href="Styles/footer.css">
    <style>
      .footer {
        position: absolute;
        bottom: -600px;
      }
    </style>
  <head>
  <body>  
    <div class="register">
        <h2>Adding Group</h2>
        <br><br>
   <form method = "post" action="">
     <label> Group Name </label> <br> <input type = "text" name = "groupName" class = "txtStyle"> <br> <br>
     <label> Location </label> <br> <input type = "text" name = "groupLocation" class = "txtStyle"> <br> <br>
     <label> Description </label> <br> <input type = "text" name = "groupDescription" class = "txtStyle"> <br> <br>
     <label> Taxes </label> <br> <input type = "text" name = "Taxes" class = "txtStyle"> <br> <br>
     
     <label> Difficulty </label> <br>
      <select name="groupDifficulty" class ="txtStyle">
      <option>--Difficulty--</option>
      <option value="Easy">Easy</option>
      <option value="Medium">Medium</option>
      <option value ="Hard">Hard</option>
      <option value ="Adventurous">Adventurous</option>
      </select> <br> <br>
     <label> Group Image </label> <br> <input type = "file" name = "groupImage" class = "txtStyle"> <br> <br>
     <label> Distance </label> <br> <input type = "text" name = "groupDistance" class = "txtStyle"> <br> <br>
     <label> Duration </label> <br> <input type = "text" name = "groupDuration" class = "txtStyle"> <br> <br>
    
     <input type = "submit" name = "insert" value = "Add" class = "btnStyle" >
    
   </form>   
 </div>
   <!-- Start Footer -->
<div class="footer">
            <div class="container">
                <img src="imgs/logo.png" alt="Logo">
                <p>We Are Social</p>
                <div class="social-icons">
                    <i class="fab fa-facebook-f"></i>
                    <i class="fab fa-twitter"></i>
                    <i class="fas fa-home"></i>
                    <i class="fab fa-linkedin"></i>
                </div>
                <p class="copyright">&copy; 2021 <span>Kasper</span> All Right Reserved</p>
            </div>
        </div>
        <!-- End Footer -->
  </body>
</html>