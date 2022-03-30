<?php
	// wyciszenie błędów PHP
	error_reporting(~E_ALL);
	
	// łączy się z plikiem configuracyjnym i na podstawie jego danych otwiera połączenia z BD
	require_once "./connect.php";
	$polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);

	// polecenie SQL
	$sql = "SELECT * FROM `odloty` WHERE 1 ORDER BY `odloty`.`godzina`  ASC limit 5;";

	// sprawdzanie poprawności połączenia
	if ($polaczenie->connect_errno!=0) {
		echo "<div class='lot_inf_con' style='display:flex;justify-content:center;align-items: center;'><strong>Error:". $polaczenie->connect_errno ." | Nie można nawiązać połączenia z bazą danych </strong></div>";}
	else {

		// sprawdzenie czy BD zwruciła wyniki oraz konwersia i wyświetlenie danych z BD
		if ($rezultat = @$polaczenie->query($sql)){
				while($row = mysqli_fetch_assoc($rezultat)) {

					// zmiana liczby w BD na obrazek reprezentatywny
					switch ($row["linia"]) {
						case 1:
							$linia_img = ' <img src="../images/enterair.png" alt="enterair">';
							break;
						case 2:
							$linia_img = ' <img src="../images/flyegypt.png" alt="flyegypt">';
							break;
						case 3:
							$linia_img = ' <img src="../images/lot.png" alt="lot">';
							break;
						case 4:
							$linia_img = ' <img src="../images/lufthansa.png" alt="lufthansa">';
							break;
						case 5:
							$linia_img = ' <img src="../images/ryanair.png" alt="ryanair">';
							break;
						case 6:
							$linia_img = ' <img src="../images/smartwings.png" alt="smartwings">';
							break;
						case 7:
							$linia_img = ' <img src="../images/wizzair.png" alt="wizzair">';
							break;
						default:
							$linia_img = ' <img src="../images/TEB.png" alt="TEB Airport">';
							break;
						}

					// zmiana datatime na godzinę
					$date = strtotime($row["godzina"]);
					$time_przylot = date('H:i', $date);

					
					// wyświetla dane z BD na stronie internetowej
					echo "
						<div class='lot_inf_con'>
							<div class='lot_inf_item_przyloty'>". $time_przylot."</div>
							<div class='lot_inf_item_przyloty'>". $row["kierunek"]."</div>
							<div class='lot_inf_item_przyloty'>". $linia_img ."</div>
							<div class='lot_inf_item_przyloty'>". $row["nr_lotu"]."</div>
							<div class='lot_inf_item_przyloty'>". $row["odprawa"]."</div>
						</div>";
				}

			// czyści rezultaty BD z pamięci
			$rezultat->free_result();
		}else{
			echo "<div class='lot_inf_con' style='display:flex;justify-content:center;align-items: center;'><strong>Błędne zapytanie SQL</strong></div>";
		}
		// zamyka połączenie z BD
		$polaczenie->close();
	}
?>