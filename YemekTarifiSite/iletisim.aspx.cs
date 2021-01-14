using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlBaglanti bgl = new SqlBaglanti();
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tbl_mesajlar (mesajgonderen,mesajbaslık,mesajmaıl,mesajıcerık) " +
                "values (@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txtgonderen.Text);
            komut.Parameters.AddWithValue("@p2",txtmesajbaslik.Text);
            komut.Parameters.AddWithValue("@p3",txtmail.Text);
            komut.Parameters.AddWithValue("@p4",txtmesaj1.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}