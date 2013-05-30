<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MvcApplication1.Models.InformationsModels>" %>

<div>
                <table>
               <tr>
                   <th>Carburant total</th>
                   <td><%:Model.InfosExperts.FuelConsumption.TotalFuel %> litres</td>
               </tr>
               <tr>
                   <th>Carburant total ralenti </th>
                   <td><%:Model.InfosExperts.FuelConsumption.TotalFuelIdle%> litres</td>
               </tr>
               <tr>
                   <th>Fonctionnement moteur</th>
                   <td><%:Model.InfosExperts.FuelConsumption.TotalRuntime%> min</td>
               </tr>
               <tr>
                   <th>Fonctionnement moteur ralenti</th>
                   <td><%:Model.InfosExperts.FuelConsumption.TotalRuntimeIdle%> min</td>
               </tr>
               <tr>
                   <th>Carburant consommé PTO</th>
                   <td><%:Model.InfosExperts.FuelConsumption.TotalFuelPTO%> litres</td>
               </tr>
               <tr>
                   <th>Fonctionnement moteur PTO</th>
                   <td><%:Model.InfosExperts.FuelConsumption.TotalRuntimePTO%> min</td>
               </tr>
                     
            </table>    
        </div>