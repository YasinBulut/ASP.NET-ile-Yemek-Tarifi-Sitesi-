﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class TarifOner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlBaglanti bgl = new SqlBaglanti();
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tbl_tarifler (TARIFAD,TARIFMALZEME,TARIFYAPILIS,TARIFRESIM,TARIFSAHIP,TARIFSAHIPMAIL) " +
                "values (@p1,@p2,@p3,@p4,@p5,@p6)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txttarifad.Text);
            komut.Parameters.AddWithValue("@p2",txtmalzemeler.Text);
            komut.Parameters.AddWithValue("@p3",txtyapilis.Text);
            komut.Parameters.AddWithValue("@p4",furesim.FileName);
            komut.Parameters.AddWithValue("@p5",txttarifoneren.Text);
            komut.Parameters.AddWithValue("@p6",txtmail.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarifiniz Alınmıştır");
        }
    }
}