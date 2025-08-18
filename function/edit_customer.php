<?php

		include ("../db/dbconn.php");
		include ("session.php");
			if(ISSET($_POST['edit']));
			{
				$id = $_SESSION['id'];
				
				$firstname=$_POST['firstname'];
				$mi=$_POST['mi'];
				$lastname=$_POST['lastname'];
				$address=$_POST['address'];
				$country=$_POST['country'];
				$pincode=$_POST['pincode'];	
				$mobile=$_POST['mobile'];
				$email=$_POST['email'];
				$password=$_POST['password'];
				
				$conn->query("UPDATE customer SET firstname='$firstname', mi='$mi', lastname='$lastname', address='$address',
							country='$country', pincode='$pincode', mobile='$mobile',email='$email', password='$password'
							WHERE customerid='$id' ") or die (mysqli_error());
							
					header("location:../home.php");
			}
		
	?>