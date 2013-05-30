<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MvcApplication1.Models.InformationsModels>" %>

<div>
            <table>
               <tr>
                   <th>Freinages</th>
                   <td><%:Model.InfosExperts.DriverBehaviour.TotalNoOfBrakeApplications %></td>
               </tr>
               <tr>
                   <th>Freinages brusques</th>
                   <td><%:Model.InfosExperts.DriverBehaviour.TotalNoOfHarshBrakes%></td>
               </tr>
               <tr>
                   <th>Accélérations brusques</th>
                   <td><%:Model.InfosExperts.DriverBehaviour.TotalNoOfHarshAcceleration%></td>
               </tr> 
               <tr>
                   <th>Surrégime</th>
                   <td><%:Model.InfosExperts.DriverBehaviour.TotalTimeOverreving%> min</td>
               </tr>
               <tr>
                   <th>Excès de vitesse</th>
                   <td><%:Model.InfosExperts.DriverBehaviour.TotalTimeOverspeeding%> min</td>
               </tr>
               <tr>
                   <th>Distance roue libre</th>
                   <td><%:Model.InfosExperts.DriverBehaviour.DistanceMovingWhileOutOfGear%> km</td>
               </tr>
                <tr>
                   <th>Temps roue libre</th>
                   <td><%:Model.InfosExperts.DriverBehaviour.Coasting%> min</td>
               </tr> 
               <tr>
                   <th>Régulateur de vitesse</th>
                   <td><%:Model.InfosExperts.DriverBehaviour.DistanceWithCCActive%> km</td>
               </tr>
               <tr>
                   <th>Régime max freinage</th>
                   <td><%:Model.InfosExperts.DriverBehaviour.MaxRPMBraking%> rpm</td>
               </tr>
               <tr>
                   <th>Régime max conduite</th>
                   <td><%:Model.InfosExperts.DriverBehaviour.MaxRPMDriving%> rpm</td>
               </tr>
               <tr>
                   <th>Vitesse max</th>
                   <td><%:Model.InfosExperts.DriverBehaviour.MaxSpeed%> km/h</td>
               </tr>
               <tr>
                   <th>Hors zone verte</th>
                   <td><%:Model.InfosExperts.DriverBehaviour.TimeOutOfGreenBandDriving%> min</td>
               </tr>
                <tr>
                   <th>Distance avec remorque</th>
                   <td><%:Model.InfosExperts.DriverBehaviour.TotalDistanceWithTrailer%> km</td>
               </tr>                                  
            </table>   
        </div>