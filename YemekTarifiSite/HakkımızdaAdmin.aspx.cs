using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Hakkımızda : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_Hakkımızda", bgl.baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                }
                bgl.baglanti().Close();
            }    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Hakkımızda set METIN=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}