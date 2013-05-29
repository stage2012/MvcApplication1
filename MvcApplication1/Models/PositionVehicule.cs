using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcApplication1.Models
{
    //classe représentant un marqueur sur la carte googleMap
    public class PositionVehicule
    {
        public string Identifiant { get; set; }
        public Coordonnees LatLong { get; set; }
    }
}