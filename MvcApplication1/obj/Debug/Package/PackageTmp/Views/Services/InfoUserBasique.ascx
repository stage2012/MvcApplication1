<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MvcApplication1.Models.InformationsModels>" %>

        <div>
            <table>
               <tr>
                   <th>Code VIN</th>
                   <td><%:Model.InfosExperts.BasicInformation.VinNumber %></td>
               </tr>
               <tr>
                   <th>Code chassis</th>
                   <td><%:Model.InfosExperts.BasicInformation.ChassisNumber%></td>
               </tr>
               <tr>
                   <th>Immatriculation</th>
                   <td><%:Model.InfosExperts.BasicInformation.RegistrationNumber%></td>
               </tr>
               <tr>
                   <th>Alias véhicule</th>
                   <td><%:Model.InfosExperts.BasicInformation.VehicleAlias%></td>
               </tr>
               <tr>
                   <th>Alias conducteur</th>
                   <td><%:Model.InfosExperts.BasicInformation.DriverAlias%></td>
               </tr>
               <tr>
                   <th>Kilométrage</th>
                   <td><%:Model.InfosExperts.BasicInformation.Odometer%> Km</td>
               </tr>
               <tr>
                   <th>Contact</th>
                   <td><%:Model.InfosExperts.BasicInformation.Ignition%></td>
               </tr>
               <tr>
                   <th>Date&Heure</th>
                   <td><%:Model.InfosExperts.BasicInformation.TimeMessage%></td>
               </tr>
               <tr>
                   <th>Niveau Carburant</th>
                   <td><%:Model.InfosExperts.BasicInformation.FuelLevel%> %</td>
               </tr>
         
            </table>     
        </div> 