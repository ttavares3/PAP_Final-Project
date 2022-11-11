using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class BackOffice_VerMensagens : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;

        if (!Page.IsPostBack)
        {
            if (Session["SessaoAdministrador"] != null)
            {
                Session["SessaoAdministrador"].ToString();
                Session["SessaoAdministradorID"].ToString();
            }
            else
            {
                Response.Redirect("LoginAdmin.aspx");
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ConnectionString);
            conn.Open();
            string insertquery = "insert into RespostaMensagens (Para, Assunto, Texto) values(@Para, @Assunto, @Texto)";
            SqlCommand con = new SqlCommand(insertquery, conn);
            con.Parameters.AddWithValue("@Para", TextBox4.Text);
            con.Parameters.AddWithValue("@Assunto", TextBox5.Text);
            con.Parameters.AddWithValue("@Texto", TextBox6.Text);
            con.ExecuteNonQuery();
            Response.Write("<script>alert('Mensagem Enviada com Sucesso!')</script>");
            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write("Erro:" + ex.ToString());
        }
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = true;
    }
}