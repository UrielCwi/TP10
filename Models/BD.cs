using Dapper;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
namespace TP10.Models;
public class BD{

    private static string _connectionString = @"Server=A-PHZ2-CIDI-050; Database=BDSeries; Trusted_Connection=True";
    public static List<Serie> GetSeries(){
        List<Serie> Series = null;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sp = "GetSeries";
            Series = db.Query<Serie>(sp, commandType: CommandType.StoredProcedure).ToList();
        }
        return Series;
    }
    public static List<Actor> GetActores(int IdSerie){
        List<Actor> Actores = null;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sp = "GetActores";
            Actores = db.Query<Actor>(sp, new{IdSerie = IdSerie}, commandType: CommandType.StoredProcedure).ToList();
        }
        return Actores;
    }
    public static List<Temporada> GetTemporadas(int IdSerie){
        List<Temporada> Temporadas = null;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sp = "GetTemporadas";
            Temporadas = db.Query<Temporada>(sp, new{IdSerie = IdSerie}, commandType: CommandType.StoredProcedure).ToList();
        }
        return Temporadas;
    }
    public static List<Serie> GetSerie(int IdSerie){
        List<Serie> Series = null;
        using(SqlConnection db = new SqlConnection(_connectionString)){
            string sp = "GetSerie";
            Series = db.Query<Serie>(sp, new{IdSerie = IdSerie}, commandType: CommandType.StoredProcedure).ToList();
        }
        return Series;
    }
}