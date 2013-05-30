using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Models;

namespace MvcApplication1.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            //si on est connecté on refirige vers le nouvel inde
            if (Request.IsAuthenticated)
                return RedirectToAction("Index", "Services");
            else
                return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
