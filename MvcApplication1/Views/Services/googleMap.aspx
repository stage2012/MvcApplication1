<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Localisation 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2 id="mapName"></h2>
    Appuyer sur "F5" pour recharger la carte
    <p id="test"></p>
    <!-- voir taille carte -->
    <div id="carteVehicules" style="width:900; height:768px;">
        <p>Veuillez patienter pendant le chargement de la carte...</p>
    </div>
    <!-- script créant la carte google-->
    <script type="text/javascript" src="./../../Scripts/gMapLoad.js"></script>
</asp:Content>
