using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace SoundHive
{
    public class ImageAPIConfig
    {

        public static void Register(HttpConfiguration config)
        {
            // Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "ImageApi",
                routeTemplate: "api/{controller}/{albumorgenre}/{id}",
                defaults: new {controller= "ImagesController",id= RouteParameter.Optional }
            );
        }
    }
}