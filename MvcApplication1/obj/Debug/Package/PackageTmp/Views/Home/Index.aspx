<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- ViewData["Messag_titre"] est une variable que le controlleur définit-->
    <h2>Attention</h2>
    <p>Pour commencer, connectez vous.</p>
   
    
  

</asp:Content>
