using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class BackOffice_VerFilmes : System.Web.UI.Page
{
    String IFilme;
    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ToString());
    SqlCommand sqlCmd1, sqlCmd;
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

        IFilme = TextBox1.Text;
        sqlCmd1 = new SqlCommand("SELECT * FROM InformacaoFilme where NomeFilme Like @LID ", connection);
        sqlCmd = new SqlCommand("select NomeFilme from InformacaoFilme where NomeFilme Like @LID ", connection);
        sqlCmd1.Parameters.Add(new SqlParameter("@LID", "%" + IFilme + "%"));
        sqlCmd.Parameters.Add(new SqlParameter("@LID", "%" + IFilme + "%"));
        Label3.Visible = false; //A label que tem o texto por defeito.
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((IFilme == null) || (IFilme == ""))
        {
            FormView1.Visible = false;
            Label3.Visible = true;
            Label3.Text = "Para Pesquisar tem de preencher a caixa de texto ";
        }
        else
        {
            connection.Open();
            SqlDataReader dr = sqlCmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                carregadados();//Função que vai carregar os dados
                FormView1.Visible = true;
                TextBox1.Text = "";
                Label3.Text = "";
                connection.Close();
            }
            else
            {
                connection.Close();
                FormView1.Visible = false;
                Label3.Visible = true;
                Label3.Text = "Não foram encontrados registos para o termo: " + IFilme;
            }

        }
    }
    private void carregadados()
    {
        connection.Close();
        connection.Open();
        SqlDataAdapter da = new SqlDataAdapter(sqlCmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        FormView1.DataSource = ds;
        FormView1.DataBind();
        connection.Close();
        TextBox1.Text = "";
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
}
