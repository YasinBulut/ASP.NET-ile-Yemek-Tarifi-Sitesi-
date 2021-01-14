using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack ==false)
            {
                id = Request.QueryString["YEMEKID"];
                islem = Request.QueryString["islem"];

                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KATEGORIAD";
                DropDownList1.DataValueField = "KATEGORIID";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
            //Yemek Listesi
            SqlCommand komut = new SqlCommand("select * from tbl_yemekler",bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem=="sil")
            {
                SqlCommand komut3 = new SqlCommand("delete from tbl_yemekler where yemekıd=@p1",bgl.baglanti());
                komut3.Parameters.AddWithValue("@p1",id);
                komut3.ExecuteNonQuery();
                bgl.baglanti().Close();

            }
          
        }

        protected void Button1_Click(object sender, EventArgs e)
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

        protected void Button5_Click(object sender, EventArgs e)
        {
            //YEMEK EKLE
            SqlCommand komut = new SqlCommand("insert into tbl_yemekler (YEMEKAD,YEMEKMALZEME,YEMEKTARIF,KATEGORIID) values " +
                "(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut.Parameters.AddWithValue("@p2",TextBox2.Text);
            komut.Parameters.AddWithValue("@p3",TextBox3.Text);
            komut.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //kategori artırma
            SqlCommand komut2 = new SqlCommand("update tbl_kategoriler set KATEGORIADET=KATEGORIADET+1 WHERE KATEGORIID=@k1",bgl.baglanti());
            komut2.Parameters.AddWithValue("@k1",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}