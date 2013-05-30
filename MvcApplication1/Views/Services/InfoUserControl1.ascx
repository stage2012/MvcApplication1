<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MvcApplication1.Models.InformationsModels>" %>

<%
    if (Model.SelectedTypeInfo=="basiques") 
    {
%>
    <%Html.RenderPartial("InfoUserBasique"); %>    
<%
    }    
        else if (Model.SelectedTypeInfo=="de consommation")
        {
%> 
        <%Html.RenderPartial("InfoUserConsommation"); %> 
<%
        }
            else if (Model.SelectedTypeInfo=="de conduite")
            {
%> 
            <%Html.RenderPartial("InfoUserConduite"); %> 
<%
            }
                else if (Model.SelectedTypeInfo=="de maintenance")
                {
%> 
                <%Html.RenderPartial("InfoUserMaintenance"); %> 
<%
                }
                    else if (Model.SelectedTypeInfo=="complètes")
                    {
%> 
                    <div>
                        <p>Basique</p>
                        <%Html.RenderPartial("InfoUserBasique"); %>    

                        <p>Consommation</p>
                        <%Html.RenderPartial("InfoUserConsommation"); %> 

                        <p>Conduite</p>
                        <%Html.RenderPartial("InfoUserConduite"); %> 

                        <p>Maintenance</p>
                        <%Html.RenderPartial("InfoUserMaintenance"); %> 
                    </div>
            
<%
                    }
%>

<%
                        else 
                        {
%> 
                       <div>
                           <p>Informations véhicules</p>   
                       </div>
<%
                        }
%>

