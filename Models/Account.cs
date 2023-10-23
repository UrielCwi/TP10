namespace TP10.Models;
public class Account{
   public static List<Serie> GetSeries(){
    return BD.GetSeries();
   }
   public static List<Actor> GetActores(int IdSerie){
    return BD.GetActores(IdSerie);
   }
   public static List<Temporada> GetTemporadas(int IdSerie){
    return BD.GetTemporadas(IdSerie);
   }
}