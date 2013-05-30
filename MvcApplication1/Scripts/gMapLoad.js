
    /***************************************************************************************************************************************************
    Ce fichier JS est appelé "onload" (au chargement de la page) et appelle la fonction "Map" du contrôleur pour les "Services"
    "getJSON" récupère le retour de cette fonction (une chaine de caractères au format JSON) et le passe en paramètre à la fonction "initialise"
    ****************************************************************************************************************************************************/
$(function () {$.getJSON("../Services/Map", initialise);});

    //fonction qui initialise la carte
    function initialise(carteJSON)
    {
        //initialisation du titre de la page
        document.getElementById("mapName").innerHTML = carteJSON.Titre;
        // initilisation des attributs et creation de la carte
        var latlng = new google.maps.LatLng(carteJSON.LatLong.Latitude, carteJSON.LatLong.Longitude);
        var options =
            {
                center: latlng,
                zoom: carteJSON.Zoom,
                //type de la carte (voir API googleMap pour voir les autres types)
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
        var gMap = new google.maps.Map(document.getElementById("carteVehicules"), options);

        /****************************************************************************************
        La boucle "each" permet de créer les marqueurs (représentant les véhicules) sur la carte.
        "carteJSON.Locations" représente le tableau contenant des véhicules avec leur position.
        A chaque itération, la fonction "setupLocationMarker" ajoute un marqueur sur la carte.
        ****************************************************************************************/
        $.each(carteJSON.Locations, function (key, vehicule) 
        {
            setupLocationMarker(gMap, vehicule);
        });
    }

    

    //fonction qui initialise un marqueur sur la carte et la gestion des évènements liés à ce marqueur
    function setupLocationMarker(myMap, fleetPosition) 
    {
        //intialisation image du marqueur d'un véhicule
        var myMarkerImage = new google.maps.MarkerImage('../Images/truck3.png');
        //position du marqueur
        var latlng = new google.maps.LatLng(fleetPosition.position.Latitude, fleetPosition.position.Longitude);
        //création du marqueur
        var myMarker = new google.maps.Marker(
        {
            position: latlng,
            map: myMap,
            //icon: myMarkerImage,
            title: fleetPosition.VinNumber
        });
        // variable indiquant le contenu de la fenêtre à afficher lors d'un clique sur le marqueur
        var myWindowOptions =
        {
            content: 'Véhicule: ' + fleetPosition.VinNumber +
            '<br>Latitude: ' + latlng.lat() +
            '<br>Longitude: ' + latlng.lng() +
            '<br>Vitesse: ' + fleetPosition.position.Speed + "km/h"
        };
        //initialisation de la fenêtre
        var myInfoWindow = new google.maps.InfoWindow(myWindowOptions);
        //gestion de l'évènement de clique
        google.maps.event.addListener(myMarker, 'click', function () {
            if (myMap.getZoom() < 10) {
                myMap.setZoom(10);
                myMap.setCenter(myMarker.getPosition());
            }
        }); 
        //gestion de l'évènement de survol de la souris (entre dans la zone du marqueur)
        google.maps.event.addListener(myMarker, 'mouseover', function () 
        {
            myInfoWindow.open(myMap, myMarker);
        });
        //gestion de l'évènement de survol de la souris (sort de la zone du marqueur)
        google.maps.event.addListener(myMarker, 'mouseout', function () 
        {
            myInfoWindow.close(myMap, myMarker);
        });
               
    }
