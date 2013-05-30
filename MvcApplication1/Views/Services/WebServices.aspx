<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	WebServices
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>WebServices</h2>
    <p><%: ViewData["Message_choix"] %></p>
    <ul> 
        <li><%: Html.ActionLink("Informations", "Informations", "Services")%></li> 
        <li><%: Html.ActionLink("Carte", "googleMap", "Services")%></li> 
    </ul> 

</asp:Content>
