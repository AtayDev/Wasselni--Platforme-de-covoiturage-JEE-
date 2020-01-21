<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 07/01/2020
  Time: 01:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">


    <!--************************************************-->
    <!--CODE CSS-->
    <!--************************************************-->
    <!--Liens-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
    <link rel="stylesheet" href="ressources/css/style.css">
    <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    
    <!--Fichiers-->
    <link rel="icon" type="image/png" href="ressources/images/icons/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="ressources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="ressources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="ressources/css/TrajetSlide.css">

    <title>Wasselni</title>
</head>

<body>



<!--************-->
<!-- Navigateur -->
<!--************-->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top navmov" id="hamburger">
    <div class="container">
        <a href="#" class="navbar-brand"> <img src="ressources/img/logo.png" alt="" width="80%" height="80%"></a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav ml-auto">

                <li class="nav-item">
                    <a href="#" class="nav-link">Accueil</a>
                </li>

                <li class="nav-item">
                    <a href="#" class="nav-link">Proposer un trajet</a>
                </li>

                <li class="nav-item">
                    <a href="#" class="nav-link">Demander un trajet</a>
                </li>

            </ul>
        </div>
    </div>
</nav>





<!--************-->
<!-- Slides -->
<!--************-->
<section id="slide">
    <div id="monSlide" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#monSlide" data-slide-to="0" class="active"></li>
            <li data-target="#monSlide" data-slide-to="1"></li>
            <li data-target="#monSlide" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">

            <!--Slide 1 avec la possibilite de schoisir un trajet-->
            <div class="carousel-item carousel-image-1   active">
                <div class="container">
                    <div class="carousel-caption d-non d-sm-block text-left">
                        <div class="row" >

                            <!--TEXT-->
                            <div class="col bienvenu" style="margin-top: 100px;">
                                <h2 class="display-4 d-inline mylead">Bienvenue sur Wessalni!</h2>
                                <p></p>
                                <p class="lead textbg">  Et vous, qui allez-vous retrouver ? <br> choisissez le trajet qui vous convient le mieux </p>
                            </div>
                            <div class="col">

                                <!--Trajet-->
                                <div class="grid slideactive">
                                    <div id="login">
                                        <center><h2><span  class="fa fa-road"></span >  Où allez-vous ?</h2></center>
                                        <form action="#" method="POST">
                                            <fieldset>


                                                <!--Depart-->
                                                <div class="wrap-input100 validate-input input-group" data-validate = "indispensable">
                                                    <input class="input100" type="text" name="pseudo" placeholder="Départ">
                                                    <span class="focus-input100"></span>
                                                    <span class="symbol-input100"><i class="fa fa-street-view" aria-hidden="true"></i>  </span>
                                                </div>


                                                <!--Destination-->
                                                <div class="wrap-input100 validate-input input-group" data-validate = "indispensable">
                                                    <input class="input100" type="text" name="pseudo" placeholder="Destination">
                                                    <span class="focus-input100"></span>
                                                    <span class="symbol-input100"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                                                </div>

                                                
                                                <!--Date-->
                                                <div class="wrap-input100 input-group">
                                                    <input class="input100" type="text" name="checkin" placeholder="Date" id="input-start">
                                                    <span class="symbol-input100"><i class="fa fa-calendar-alt" aria-hidden="true"></i></span>
                                                </div>



                                                <!--Effectif-->
                                                <div class="wrap-input100 input-group">
                                                    <div class="input-group-icon js-number-input">
                                                        <div class="icon-con">
                                                            <span class="plus">+</span>
                                                            <span class="minus">-</span>
                                                        </div>
                                                        <input class="input100 quantity" style="height: 44px; border-radius: 17px; margin-bottom: 5px; width: 288px;" type="text" name="guests" value="2 Personnes">
                                                        <span class="symbol-input100"><i class="fa fa-users" aria-hidden="true"></i></span>
                                                    </div>
                                                </div>



                                                <!--Les checkbox-->
                                                <div class="checkbox icheck-check1">
                                                    <input type="checkbox" checked id="check1" />
                                                    <label for="check1" style="color: darkslategray; font-style:initial;font-size: 15px;">Avec retour</label>
                                                </div>
                                                <br>



                                                <!--Button pour chercher-->
                                                <div style="margin-left: 150px; margin-top: 20px;">
                                                    <a href="#" id="btn" ></a>
                                                </div>


                                            </fieldset>
                                        </form>

                                    </div>
                                    <!-- Fin Trajet-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--Slide 2-->
            <div class="carousel-item carousel-image-2 ">
                <div class="container">
                    <div class="carousel-caption d-non d-sm-block text-right mb-5">
                        <div class="row" style="margin-bottom: 30px;">
                            <div class="col"></div>
                            <div class="col">
                                <h2 class="display-4 d-inline titreB text">Avoir le choix</h2>
                                <br>
                                <p class="lead textbg">L'avantage des routes ? Elles vont partout ! Littéralement. Profitez de milliers de destinations.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--Slide 3-->
            <div class="carousel-item carousel-image-3 ">
                <div class="container">
                    <div class="carousel-caption d-non d-sm-block text-left mb-5">
                        <div class="row">
                            <div class="col"></div>
                            <div class="col">
                                <h2 class="display-4 d-inline mylead">Une communauté de confiance</h2>
                                <br>
                                <p class="lead textbg"> Wasselni compte des milliers de membres. Nous avons vérifié leurs profils, un par un. </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!--Suivant & Precedant-->
        <a href="#monSlide" data-slide="prev" class="carousel-control-prev">
            <span class="carousel-control-prev-icon"></span>
        </a>

        <a href="#monSlide" data-slide="next" class="carousel-control-next">
            <span class="carousel-control-next-icon"></span>
        </a>

    </div>
</section>





<!--************-->
<!--Nos services (en cours) -->
<!--************-->


<!--************-->
<!--Foter -->
<!--************-->

<footer>
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-md-3 colfooter0">
                    <img src="ressources/img/logo-footer.png"  alt="Wasselni" style="width:50%;height:22%;">
                    <br>
                    <p>
                        Notre équipe travaillent  pour vous offrir des conseilles fidèles, des offres originaux.
                    </p>
                    <p><a href="#" class="a">Notre équipe </a></p>
                </div>
                <div class="col-md-4 offset-md-1 colfooter1">
                    <h3>Contact</h3>
                    <p><i class="fas fa-map-marker-alt"></i> Avune de france, Agdal, Rabat</p>
                    <p><i class="fas fa-phone" ></i> Téléphone: O5 36 22 67 11</p>
                    <p><i class="fas fa-envelope"></i> Email: <a href="mailto:hello@domain.com" class="a">support@wasselni.com</a></p>
                </div>
                <div class="col-md-4 footer-links colfooter2">
                    <div class="row">
                        <div class="col">
                            <h3>Liens</h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <p><a class="scroll-link a" href="#top-content">Accueil</a></p>
                            <p><a href="#" class="a">proposer un trajet</a></p>
                            <p><a href="#" class="a">Demande un trajet</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="row rowfooter">
                <div class="col-md-6 footer-copyright">
                    Copyright &copy; <span id="year"></span>, powered by ENSIAS
                </div>
                <div class="col-md-6 footer-social">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-google-plus-g"></i></a>
                </div>
            </div>
        </div>
    </div>
</footer>












<!--************************************************-->
<!--CODE JAVASCRIPT-->
<!--************************************************-->

<!--Liens-->
<script src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js"></script>
<script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>
<!--Fichiers-->
<script src="ressources/js/moment.min.js"></script>
<script src="ressources/js/dateTrajetSlide.js"></script>
<script src="ressources/js/global.js"></script>


<!--Autres (pour le tester)-->
<script>
    /*MOVEMENT LORS LE SITE SE LANCE*/

    //navbar
    ScrollReveal().reveal('.navmov',{
        origin:'top',
        duration:2000,
        distance:'60px'
    });
    //slide
    ScrollReveal().reveal('.slideactive',{
        origin:'left',
        duration:2000,
        distance:'60px'
    });

    ScrollReveal().reveal('.bienvenu',{
        origin:'buttom',
        duration:2000,
        distance:'60px'
    });
    
    


    //footer
    ScrollReveal().reveal('.colfooter0',{
        origin:'bottom',
        duration:2000,
        distance:'60px'
    });
    ScrollReveal().reveal('.colfooter1',{
        origin:'bottom',
        duration:2000,
        distance:'60px'
    });
    ScrollReveal().reveal('.colfooter2',{
        origin:'bottom',
        duration:2000,
        distance:'60px'
    });
    ScrollReveal().reveal('.rowfooter',{
        origin:'right',
        duration:2000,
        distance:'60px'
    });


    // Get the current year for the copyright
    $('#year').text(new Date().getFullYear());




    // Configure Slider
    $('.carousel').carousel({
        interval: 6000,
        pause: 'hover'
    });

    // Lightbox Init
    $(document).on('click', '[data-toggle="lightbox"]', function (event) {
        event.preventDefault();
        $(this).ekkoLightbox();
    });







    /*POUR LA NAVIGATION*/
    var open = document.getElementById('hamburger');
    var changeIcon = true;

    open.addEventListener("click", function(){

        var overlay = document.querySelector('.overlay');
        var nav = document.querySelector('nav');
        var icon = document.querySelector('.menu-toggle i');

        overlay.classList.toggle("menu-open");
        nav.classList.toggle("menu-open");

        if (changeIcon) {
            icon.classList.remove("fa-bars");
            icon.classList.add("fa-times");

            changeIcon = false;
        }
        else {
            icon.classList.remove("fa-times");
            icon.classList.add("fa-bars");
            changeIcon = true;
        }
    });
</script>


</body>

</html>