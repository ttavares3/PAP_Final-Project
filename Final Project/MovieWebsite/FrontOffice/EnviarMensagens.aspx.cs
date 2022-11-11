using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class FrontOffice_EnviarMensagens : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
            TextBox4.Text += Session["SessaoUtilizador"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ConnectionString);
            conn.Open();
            string insertquery = "insert into Mensagens (Para, Assunto, Texto, De) values(@Para, @Assunto, @Texto, @De)";

            SqlCommand con = new SqlCommand(insertquery, conn);
            con.Parameters.AddWithValue("@Para", TextBox1.Text);
            con.Parameters.AddWithValue("@Assunto", TextBox2.Text);
            con.Parameters.AddWithValue("@Texto", TextBox3.Text);
            con.Parameters.AddWithValue("@De", TextBox4.Text);
            con.ExecuteNonQuery();
            Response.Write("<script>alert('Mensagem Enviada com Sucesso!')</script>");
            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write("Erro:" + ex.ToString());
        }
    }
}