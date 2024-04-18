using crudoderoberto.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mvc;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace crudoderoberto.Controllers
{
    public class ContactoController : Controller
    {
        private static string conexion = ConfigurationManager.ConnectionStrings["cadena"].ToString();

        private static List <Contacto> oLista = new List <Contacto>();


        // GET: Contacto
        public ActionResult Inicio()
        {

            using (SqlConnection oconexion = new SqlConnection(conexion))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM CONTACTO", oconexion);
                cmd.CommandType = CommandType.Text;
                oconexion.Open();

                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        Contacto NuevoContacto = new Contacto();

                        NuevoContacto.IdContacto = Convert.ToInt32(dr["IdContacto"]);
                        NuevoContacto.Nombres = dr["Nombres"].ToString();
                        NuevoContacto.Apellidos = dr["Apellidos"].ToString();
                        NuevoContacto.Telefono = dr["Telefono"].ToString();
                        NuevoContacto.Correo = dr["Correo"].ToString();

                        oLista.Add(NuevoContacto);

                    }
                }
            }

            return View(oLista);
        }

        public ActionResult Registrar()
        {
            return View();
        }
    }
}