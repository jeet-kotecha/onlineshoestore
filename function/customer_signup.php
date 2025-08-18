<?php

	include('db/dbconn.php');
	if (isset($_POST['signup']))
{
	$firstname=$_POST['firstname'];
	$mi=$_POST['mi'];
	$lastname=$_POST['lastname'];
	$address=$_POST['address'];
	$country=$_POST['country'];
	$pincode=$_POST['pincode'];	
	$mobile=$_POST['mobile'];
	$email=$_POST['email'];
	$password=$_POST['password'];
	$query = $conn->query("SELECT * FROM `customer` WHERE `email` = '$email'");
	$check = $query->num_rows;
		if($check == 1)
			{
				echo "<script>alert('EMAIL ALREADY EXIST')</script>";	 
			}
			
			else
				{
					$conn->query ("INSERT INTO customer (firstname, mi, lastname, address, country, pincode, mobile, email, password)
					VALUES ('$firstname', '$mi', '$lastname', '$address', '$country', '$pincode', '$mobile', '$email', '$password')") 
					or die(mysqli_error());	
				}				
					
}
?>