<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MvcApplication1.Models.InformationsModels>" %>

<div>
            <table>
               <tr>
                   <th>Distance restante contrôle</th>
                   <td><%:Model.InfosExperts.Maintenance.ServiceInterval %> km</td>
               </tr>
            </table>   
        </div>