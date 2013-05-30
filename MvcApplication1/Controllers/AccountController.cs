using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using MvcApplication1.Models;

namespace MvcApplication1.Controllers
{
    
    [HandleError]
    public class AccountController : Controller
    {
        
        public IFormsAuthenticationService FormsService { get; set; }
      

        protected override void Initialize(RequestContext requestContext)
        {
            if (FormsService == null) { FormsService = new FormsAuthenticationService(); }
            base.Initialize(requestContext);
        }

        // **************************************
        // URL: /Account/LogOn
        // **************************************

        public ActionResult LogOn()
        {
            return View();
        }
        
        [HttpPost]
        public ActionResult LogOn(LogOnModel model)
        {
            if ((String.IsNullOrEmpty(model.UserName))||(String.IsNullOrEmpty(model.Password))) { ModelState.AddModelError("","Voir le(s) champs non-rempli(s)"); }
            else
                try
                {
                    //inititalisation des services
                    ServicePosition.PositioningInterfaceClient serviceP = new ServicePosition.PositioningInterfaceClient();
                    ServiceVehicule.VehicleAnalysisInterfaceClient serviceV = new ServiceVehicule.VehicleAnalysisInterfaceClient();
                    //identifiants
                    serviceP.ClientCredentials.UserName.UserName = model.UserName;
                    serviceP.ClientCredentials.UserName.Password = model.Password;
                    serviceV.ClientCredentials.UserName.UserName = model.UserName;
                    serviceV.ClientCredentials.UserName.Password = model.Password;
                    //appel des Web Services 
                    serviceP.GetFleetPosition();
                    serviceV.GetVehicleAnalysis();
                    Session["Fleet"] = serviceP.GetFleetPosition();
                    Session["Analyse"] = serviceV.GetVehicleAnalysis();
                    //tentative de login
                    FormsService.SignIn(model.UserName);
                    return RedirectToAction("Index", "Services");
                }

                catch
                {
                    if (Request.IsAuthenticated) return RedirectToAction("Index", "Services");
                    else ModelState.AddModelError("", "Le nom d'utilisateur ou le mot de passe est incorrect");
                    
                }
            //retour de sécurité (si on arrive à ce retour alors il y a eu un problème)
            return View(model);
        }

        // **************************************
        // URL: /Account/LogOff
        // **************************************

        public ActionResult LogOff()
        {
            FormsService.SignOut();
            return RedirectToAction("Index", "Home");
        }

       
    }
}
