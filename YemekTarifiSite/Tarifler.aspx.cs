using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Tarifler : System.Web.UI.Page
    {
        SqlBaglanti bgl = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;

            SqlCommand komut = new SqlCommand("select * from tbl_tarifler where TARİFDURUM=0", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            SqlCommand komut2 = new SqlCommand("select * from tbl_tarifler where TARİFDURUM=1", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}