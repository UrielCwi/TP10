using Microsoft.AspNetCore.Mvc;
using TP10.Models;
namespace TP10.Controllers;

public class HomeController : Controller
{
    public IActionResult Index()
    {
        ViewBag.Series = Account.GetSeries();
        return View();
    }

    public List<Actor> VerDetalleActor(int IdSerie){
        return Account.GetActores(IdSerie);
    }

    public List<Temporada> VerDetalleTemporadas(int IdSerie){
        return Account.GetTemporadas(IdSerie);
    }

    public List<Serie> VerDetalleASerie(){
        return Account.GetSeries();
    }
}
