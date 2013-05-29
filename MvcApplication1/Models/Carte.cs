using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcApplication1.Models
{
    //classe représentant une carte googleMap
    public class Carte
    {
        public string Titre { get; set; }
        public Coordonnees LatLong { get; set; }
        public int Zoom { get; set; }
        private List<ServicePosition.FleetPosition> locations = new List<ServicePosition.FleetPosition>();
        public List<ServicePosition.FleetPosition> Locations
        {
            get { return locations; }
            set { locations = value; }
        }
    }
}