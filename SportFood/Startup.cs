using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SportFood.Startup))]
namespace SportFood
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
