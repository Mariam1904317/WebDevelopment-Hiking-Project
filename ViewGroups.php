<?php include "HikerHome.php";?>
<div class="wrapper"> 
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title> Groups </title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<style>
		 <?php  include "Styles/viewGroups.css"; ?>
		</style>
		<link rel="stylesheet" href="Styles/footer.css">
		<style>
			.footer {
				padding-top: calc(var(--section-padding) / 2);
    padding-bottom: calc(var(--section-padding) / 2);
    background-image: url(../imgs/subscribe.jpg);
    background-size: cover;
    position: absolute;
    bottom: -280px;
    width: 100%;
    color: white;
    text-align: center;
    position: absolute;
    bottom: -1200px;
			}
			.footer img {
				max-width: 100%;
    max-height: 50px;
			}
		</style>
	</head>
	<body>
  <div class="main_container"> 
  <div class="item"> 
	<div class="content">
		<div class="container">
			<br><br><br>
			<div class="form-group">
				<div class="input-group">
					<input type="text" id="search_text" placeholder="You Can Search By Name OR Location" class="form-control" />
				</div>
			</div>
			<br>
			<div id="result"></div>
		</div>

	</body>
  </div>
</div>
</div>
</div>
</html>


<script>
$(document).ready(function(){
	load_data();
	function load_data(query){
		$.ajax({
			url:"fetchGroup.php",
			method:"post",
			data:{query},
			success:function(data){
				$('#result').html(data);
			}
		});
	}
	
	$('#search_text').keyup(function(){
		var search = $(this).val();
		if(search != ''){
			load_data(search);
		}
		else{
			load_data();			
		}
	});
});
</script>

