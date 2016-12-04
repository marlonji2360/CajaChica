using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProyectoCajaChica.Startup))]
namespace ProyectoCajaChica
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
