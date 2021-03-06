<?php

	session_start();
	
	if (!isset($_SESSION['zalogowany']))
	{
		header('Location: ../index.html');
		exit();
	}

?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Adam Marzec">
    <title>Lotnisko exe</title>
    <link rel="icon" href="../images/title_logo.png" type = "image/x-icon"> 
    <!-- <link rel="icon" href="https://uonetplus-uczen.vulcan.net.pl/Scripts/Vulcan.Efeb.Opiekun/21_13_6_48471/app/resources/images/herb.svg" type = "image/x-icon">  -->
    <link rel="stylesheet" href="../CSS/main.css">
    <link rel="stylesheet" href="../CSS/login.css">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <script src="../JS/login.js"></script>
</head>
<body>
    <div id="site_con">
        <section id="top">
            <section id="top_bar">
                <div id="logo_con">
                    <div id="logo_wrapper">
                        <img id="logo" src="../images/logo.png" alt="LOGO">
                        <!-- <img id="logo" src="https://uonetplus-uczen.vulcan.net.pl/Scripts/Vulcan.Efeb.Opiekun/21_13_6_48471/app/resources/images/herb.svg" alt="LOGO" > -->
                    </div>
                </div>
                <div id="login_con">
                    <div id="login_button" title="wyloguj">
                        <div id="login_wrapper">
                            <a href="../PHP/logout.php"><span>Wyloguj</span></a>
                        </div>
                    </div>
                </div>
            </section>
            <nav>
                <ul>
                    <li><a href="./index.html" title="Strona Główna">Strona Główna</a></li>
                    <li><a href="./dla_pasarzera.html" title="Dla Pasażera">Dla Pasażera</a></li>
                    <li><a href="./nasze_lotnisko.html" title="Nasze Lotnisko">Nasze Lotnisko</a></li>
                    <li><a href="./about_us.html" title="Sklep">O Nas</a></li>
                </ul>
            </nav>
        </section>
        <main>
            <section loty_con>
                <div id="banner_loty"></div>
            </section>
            <div id="depresia">
                <h1>WORK IN NON PROGRES<h1>
            </div>
        </main>
        <footer>
            <div id="footer_wrapper">
                <div id="footer_links">
                    <ul>
                        <li><a href="#" title="kontakt">kontakt</a></li>
                        <li><a href="#" title="O Nas">O Nas</a></li>
                    </ul>
                </div>
                <div id="footer_info">
                    <p>CopyRight &copy; 2022 TEB Edukacja</p>
                </div>
            </div>
        </footer>
    </div>
</body>
</html>
