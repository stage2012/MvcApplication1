using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace MvcApplication1.Models
{

    #region Models
    //classe représentant le modèle d'un formulaire de connexion
    public class LogOnModel
    {
        //[Message d'erreur en cas d'erreur]
        //[Nom à afficher sur le formulaire]
        //Attribut

        [Required(ErrorMessage = "N'oubliez pas de rentrer votre identifiant")]
        [DisplayName("Login")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "N'oubliez pas de rentrer votre mot de passe")]
        [DataType(DataType.Password)]
        [DisplayName("Password")]
        public string Password { get; set; }

    }
    #endregion

    #region Services
    public interface IFormsAuthenticationService
    {
        void SignIn(string userName);
        void SignOut();
    }

    public class FormsAuthenticationService : IFormsAuthenticationService
    {
        public void SignIn(string userName)
        {
            if (String.IsNullOrEmpty(userName)) throw new ArgumentException("Login ne peut être nul ou vide.", "userName");
            FormsAuthentication.SetAuthCookie(userName, false);
        }

        public void SignOut()
        {
            FormsAuthentication.SignOut();
        }
    }
    #endregion

}