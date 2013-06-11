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
            if (Request.IsAuthenticated)
                return View();
            else return RedirectToAction("LogOn","Account");
        }

        public ActionResult WebServices()
        {
            if (Request.IsAuthenticated)
            return View();
            else return RedirectToAction("LogOn", "Account");
        }

        public ActionResult googleMap()
        {
            if (Request.IsAuthenticated)
            return View();
            else return RedirectToAction("LogOn", "Account");
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
            try
            {
                for (int i = 0; i < response.Length; i++)
                {
                    listePosition.Add(response[i]);
                }
            }
            catch
            {
                
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
            try
            {
                for (int i = 0; i < response.Length; i++)
                {
                    liste.Add(new SelectListItem { Text = response[i].BasicInformation.VinNumber, Value = i.ToString() });
                }
            }
            catch
            {
                liste.Add(new SelectListItem { Text = "--aucun véhicule abonné--", Value = "0" });
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
            if (Request.IsAuthenticated)
            //envoi à la vue du modèle
            return View(getModel());
            else return RedirectToAction("LogOn", "Account");
        }

        [HttpPost]
        public ActionResult Informations(InformationsModels model)
        {
            if (Request.IsAuthenticated)
            {
                //récupère les données
                ServiceVehicule.VehicleAnalysisType[] response = (ServiceVehicule.VehicleAnalysisType[])Session["Analyse"];
                try
                {
                    InformationsModels newModel = getModel();
                    newModel.SelectedVinNumber = model.SelectedVinNumber;
                    newModel.SelectedTypeInfo = model.SelectedTypeInfo;
                    newModel.InfosExperts = response[Convert.ToInt32(model.SelectedVinNumber)];
                    return View(newModel);
                }
                catch
                {
                    return RedirectToAction("Index", "Home");
                }
            }
            else return RedirectToAction("LogOn", "Account");
            
        }

    }   
}
