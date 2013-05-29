using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace MvcApplication1.Models
{
    //classe représentant le modèle du formulaire de séléction des informations à afficher
    public class InformationsModels
    {
        //[Nom à afficher sur le formulaire]
        //Attribut

        [DisplayName("SelectedTypeInfo")]
        public string SelectedTypeInfo {get; set;}

        [DisplayName("EnumTypeInfo")]
        public IEnumerable<SelectListItem> EnumTypeInfo { get; set; }

        [DisplayName("SelectedVinNumber")]
        public string SelectedVinNumber { get; set; }

        [DisplayName("EnumVinNumber")]
        public IEnumerable<SelectListItem> EnumVinNumber { get; set; }

        [DisplayName("InfosBasiques")]
        public ServicePosition.FleetPosition InfosBasiques { get; set; }

        [DisplayName("InfosExperts")]
        public ServiceVehicule.VehicleAnalysisType InfosExperts { get; set; }
        
    }
   
   

  
 



  
   

   
}