using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Models;




namespace MvcApplication1.Controllers
{
    public class ServicesController : Controller
    {
        //
        // GET: /Services/
        //
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult WebServices()
        {
            
            return View();
        }

        public ActionResult googleMap()
        {
            
            return View();
        }

        public ActionResult Map()
        {
            //récuperation 
            ServicePosition.FleetPosition[] response = (ServicePosition.FleetPosition[])Session["Fleet"];
            //création de la carte 
            var carteVehicules = new Carte();
            // attributs
            carteVehicules.Titre = "Carte de la flotte " + User.Identity.Name;
            carteVehicules.LatLong = new Coordonnees { Latitude = 47, Longitude = 5 };
            carteVehicules.Zoom = 6;
            //création de la liste d'éléments de la classe FleetPosition
            List<ServicePosition.FleetPosition> listePosition = new List<ServicePosition.FleetPosition>();
            if(response.Length>0)
            {
                for (int i = 0; i < response.Length; i++)
                {
                    listePosition.Add(response[i]);
                  
                }
            }
            
            carteVehicules.Locations = listePosition;

            return Json(carteVehicules, JsonRequestBehavior.AllowGet);

        }

        public InformationsModels getModel()
        {
            //récupère les données   
            ServiceVehicule.VehicleAnalysisType[] response = (ServiceVehicule.VehicleAnalysisType[])Session["Analyse"];

            //récupération de liste des VinNumbers
            var liste = new List<SelectListItem>();
            for (int i = 0; i < response.Length; i++)
            {
                liste.Add(new SelectListItem { Text = response[i].BasicInformation.VinNumber, Value = i.ToString() });
            }
            //création du modèle
            var model = new InformationsModels
            {
                //création des types d'informations sélectionnables 
                EnumTypeInfo = new[]
                {
                    new SelectListItem{Text = "basiques", Value = "basiques" },
                    new SelectListItem{Text = "de consommation", Value ="de consommation"},
                    new SelectListItem{Text = "de conduite", Value ="de conduite"},
                    new SelectListItem{Text = "de maintenance", Value ="de maintenance"},
                    new SelectListItem{Text = "complètes", Value = "complètes" }
                },
                EnumVinNumber = liste
            };
            return model;
        }

        public ActionResult Informations()
        {
            //envoi à la vue du modèle
            return View(getModel());  
        }

        [HttpPost]
        public ActionResult Informations(InformationsModels model)
        {
            //récupère les données
            ServiceVehicule.VehicleAnalysisType[] response = (ServiceVehicule.VehicleAnalysisType[])Session["Analyse"];
            InformationsModels newModel = getModel(); 
            newModel.SelectedVinNumber = model.SelectedVinNumber;
            newModel.SelectedTypeInfo = model.SelectedTypeInfo;
            newModel.InfosExperts = response[Convert.ToInt32(model.SelectedVinNumber)];
            return View(newModel);
        }

    }   
}
