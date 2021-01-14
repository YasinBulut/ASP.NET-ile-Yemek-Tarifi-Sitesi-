using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public class SqlBaglanti
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-FEPGLU4;Initial Catalog=DBYemekTarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}