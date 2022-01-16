<!DOCTYPE html>
<html>
<head>
  <title>Document Title</title>
  <style>
    <?php  include "Styles/menus.css"; ?>
  </style>
</head>

<body> 
 <div id="mainbox" onclick="openFunction()">&#9776; <?php 	
					 include "dB.php";
					 ob_start();
			        session_start();
					echo "Welcome ".$_SESSION["firstName"];
					?></div>
  <div id="menu" class="sidemenu">
 			  <a href='AdminHome.php'>Home</a>
			  <a href='AddProduct.php'>Add</a>
			  <a href='DeleteProduct.php'>Delete</a>
			  <a href='UpdateProduct.php'>Edit</a>			
			  <a href='logOut.php'>LogOut</a>
			</nav>
   <a href="#" class="closebtn" onclick="closeFunction()">&times;</a>
 </div>

<script type="text/javascript">
 function openFunction(){
  document.getElementById("menu").style.width="300px";
  document.getElementById("mainbox").style.marginLeft="300px";
 }
function closeFunction(){
 document.getElementById("menu").style.width="0px";
 document.getElementById("mainbox").style.marginLeft="0px";

}
</script>
<link rel="stylesheet" href="Styles/footer.css">
<style>
	.footer {
		position: absolute;
    bottom: 0;
    left: 0;
	}
</style>

</body>
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
</html>

