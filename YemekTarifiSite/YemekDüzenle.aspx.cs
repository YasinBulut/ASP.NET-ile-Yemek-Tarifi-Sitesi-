using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class YemekDüzenle : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YEMEKID"];
            if (Page.IsPostBack == false)//sayfayı bir kere yükle
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where YEMEKID=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }

            }
            bgl.baglanti().Close();

            if (Page.IsPostBack == false)
            {
                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KATEGORIAD";
                DropDownList1.DataValueField = "KATEGORIID";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/YemekResim/"+FileUpload1.FileName));

            SqlCommand komut = new SqlCommand("update tbl_yemekler set YEMEKAD=@p1,YEMEKMALZEME=@p2,YEMEKTARIF=@p3,KATEGORIID=@p4,YEMEKRESIM=@p6 where YEMEKID=@p5",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut.Parameters.AddWithValue("@p2",TextBox2.Text );
            komut.Parameters.AddWithValue("@p3",TextBox3.Text);
            komut.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5",id);
            komut.Parameters.AddWithValue("@p6", "~/YemekResim/"+FileUpload1.FileName);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //TÜM YEMEKLERİN DURUMUNU FALSE YAPAR
            SqlCommand komut = new SqlCommand("update tbl_yemekler set DURUM=0",bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //GÜNÜN YEMEĞİNİ DEĞİŞTİRME
            SqlCommand komut2 = new SqlCommand("update tbl_yemekler set durum=1 where yemekıd=@p1",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1",id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}