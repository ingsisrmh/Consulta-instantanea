<?php
	$buscar = $_POST['b'];

	if(!empty($buscar))
	{
		buscar($buscar);
	}

	function buscar($b)
	{
		$host = 'localhost'; //Escribir el host
		$user = 'root'; //Escribir el usuario
		$password = ''; //Escribir el password
		$database = 'kaisen'; //Escribir el nombre de la base de datos

		$con = mysqli_connect($host, $user, $password) or die('No se pudo conectar: ' . mysqli_error());

		mysqli_select_db($con, $database);

		$sql = mysqli_query($con, "SELECT * FROM aseguramiento WHERE operador LIKE '%".$b."%'");

		$contar = mysqli_num_rows($sql);

		if($contar == 0)
		{
			echo "No se han encontrado resultados para '<b>".$b."</b>'.";
		}
		else
		{
			while($row=mysqli_fetch_array($sql))
			{
				$nombre = $row['operador'];
				$id = $row['id'];
				echo $id." - ".$nombre."<br/><br/>";
			}
		}
	}
?>
