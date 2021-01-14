using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Admin1 : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack ==false)
            {
                id = Request.QueryString["KATEGORIID"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler",bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Silme işlemi
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete from tbl_Kategoriler where KATEGORIID=@p1",bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1",id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
        }
        protected void Button1_Click(object sender,EventArgs e)
        {
            Panel2.Visible = true;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler (KATEGORIAD) values (@p1)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

    }
}