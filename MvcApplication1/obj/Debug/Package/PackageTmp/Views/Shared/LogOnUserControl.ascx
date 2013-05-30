<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%
    if (Request.IsAuthenticated) {
%>
        Vous êtes connecté sous <b><%: Page.User.Identity.Name %></b>
       [<%: Html.ActionLink("deconnexion", "LogOff", "Account") %>]
<%
    }
    else {
%> 
        [<%: Html.ActionLink("connexion", "LogOn", "Account") %>]
<%
    }
%>
