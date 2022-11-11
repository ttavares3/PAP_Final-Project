using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class FrontOffice_FilmesFavoritos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panelver.Visible = false;
        Button1.Visible = false;

        if (!Page.IsPostBack)
        {
            if (Session["SessaoUtilizador"] != null)
            {
                Session["SessaoUtilizador"].ToString();
                Session["SessaoUtilizadorID"].ToString();
            }

            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ConnectionString);
            conn.Open();
            string insertquery = "insert into Favoritos(NomeFilme) values(@NomeFilme)";
            SqlCommand con = new SqlCommand(insertquery, conn);
            con.Parameters.AddWithValue("@NomeFilme", CheckBoxList1.SelectedValue);
            con.ExecuteNonQuery();
            Response.Write("<script>alert('Guardado com Sucesso!')</script>");
            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write("Erro:" + ex.ToString());
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panelver.Visible = true;
    }
}