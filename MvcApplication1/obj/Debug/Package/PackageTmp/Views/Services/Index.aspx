<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Aide</h2>
    <p>L'onglet Webservices permet d'accéder aux fonctionnalités du site</p>
    
    <p>
    Le lien "Carte" permet d'accéder à l'affichage de la position des véhicules de la flotte.
    En survolant un véhicule avec la souris on peut accéder à des informations complémentaires.</p>
    <p> Le lien "Informations" permet d'obtenir des informations sur un véhicule 
    en fonction de son identifiant (VinNumber)</p>

    <ul>
        <li>Code VIN (VinNumber): numéro d'identification du véhicule</li>
        <li>Code chassis (ChassisNumber): numéro de chassis du véhicule</li>
        <li>Immatriculation (Registration number): numéro d''immatricualation sur le portail FMP</li>
        <li>Alias véhicule (VehicleAlias): alias du véhicule</li>
        <li>Alias conducteur (DriverAlias): alias du conducteur </li>
        <li>Kilométrage (Odometer): distance affichée par le  véhicule en km</li>
        <li>Contact (Ignition): position du contact (allumé/éteint)</li>
        <li>Date&Heure (TimeMessage): date et heure de la lecture des informations du véhicule</li>
        <li>Niveau Carburant (FuelLevel): niveau du réservoir principal en %, il peut y avoir une variation de 5% en fonction des turbulences</li>
    </ul>

    <ul>
        <li>Carburant total (TotalFuel): total de carburant brûlé par le véhicule en litre</li>
        <li>Carburant ralenti (TotalFuelIdle): consommation totale de carburant au ralenti en litre, 
        le véhicule est au ralenti si la vitesse < 4 km/h pendant plus de 30s et avec le PTO non actif</li>
        <li>Fonctionnement moteur (TotalRuntime): durée de fonctionnement du véhicule depuis sa mise en service en minutes</li>
        <li>Fonctionnement moteur ralenti (TotalRuntimeIdle): durée de fonctionnement du moteur au ralenti en minutes</li>
        <li>Carburant consommé PTO (TotalFuelPTO): consommation totale de carburant avec utilisation de la prise de mouvement</li>
        <li>Fonctionnement moteur PTO (TotalRuntimePTO): durée de fonctionnement du moteur avec utilisation de la prise de mouvement</li>
    </ul>

    <ul>
        <li>Freinages (TotalNoOfBrakeApplications): nombre total de freinages,
         un freinage ayant lieu moins de 3 secondes avant le précédent n'est pas comptabilisé</li>
        <li>Distance avec remorque (TotalDistanceWithTrailer): distance accumulée en km avec une remorque</li>
        <li>Accélérations brusques (TotalNoOfHarshAcceleration): nombre total d'accélérations brusques, 
         une accélération brusque ayant lieu moins de 3 secondes avant la précédente n'est pas comptabilisée</li>
        <li>Freinages brusques: nombre total de freinages brusques, 
         un freinage brusque ayant lieu moins de 3 secondes avant le précédent n'est pas comptabilisé</li>
        <li>Surrégime(TotalTimeOverreving): temps total en surrégime en minutes</li>
        <li>Excès de vitesse (TotalTimeOverspeeding): temps total en excès de vitesse en minutes</li>
        <li>Distance roue libre (DistanceMovingWhileOutOfGear): distance parcourue en inertie en km</li>
        <li>Régulateur de vitesse (DistanceWithCCActive): distance parcourue avec le régulateur de vitesse en km</li>
        <li>Régime max freinage(MaxRPMBraking): tours par minute maximum en freinant</li>
        <li>Régime max conduite(MaxRPMDriving): tours par minute maximum en conduisant</li>
        <li>Vitesse max (MaxSpeed): vitesse maximale en km/h</li>
        <li>Hors zone verte (TimeOutOfGreenBandDriving): conduite hors de la zone verte en minutes</li>
        <li>Temps roue libre (Coasting): durée passée en roue libre en minutes</li>
    </ul>

    <ul>
        <li>Distance restante contrôle (ServiceInterval): distance restante avant le prochain contrôle technique en km</li>
    </ul>
    
</asp:Content>
