<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<%
    if (Request.IsAuthenticated) {
%>
                
    <li><%: Html.ActionLink("Home", "Index", "Home")%></li>
    <li><%: Html.ActionLink("Web services", "WebServices", "Services")%></li>
    <li><%: Html.ActionLink("About", "About", "Home")%></li>
 
<%
    }
    else {
%> 
               
    <li><%: Html.ActionLink("Home", "Index", "Home")%></li>
    <li><%: Html.ActionLink("About", "About", "Home")%></li>
    
<%
    }
%>
