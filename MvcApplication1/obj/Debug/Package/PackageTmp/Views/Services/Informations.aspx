<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.InformationsModels>" %>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Informations
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Informations</h2>

    <% using (Html.BeginForm()) { %>
    <div>
        <fieldset>
           <legend>Choisir un véhicule et les informations voulues</legend>
           <div> 
               Affichez les informations <%= Html.DropDownListFor(m => m.SelectedTypeInfo,new SelectList(Model.EnumTypeInfo, "Value", "Text"))%>           
               du véhicule <%= Html.DropDownListFor(m => m.SelectedVinNumber ,new SelectList(Model.EnumVinNumber, "Value", "Text"))%>
           </div>
            <p>
                <input type="submit" value="Valider" />
            </p>
        </fieldset>
    </div>   
    <% } %>
    
    <div><%Html.RenderPartial("InfoUserControl1"); %></div>
   
</asp:Content>
