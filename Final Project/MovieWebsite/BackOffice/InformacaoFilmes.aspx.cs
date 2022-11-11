using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class BackOffice_InformacaoFilmes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
        //try
        //{
        //    SqlDataSource sds = new SqlDataSource();
        //    sds.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ToString();
        //    sds.SelectParameters.Add("NomeFilme", TypeCode.String, TextBox1.Text);

        //    sds.SelectCommand = "Select * from InformacaoFilme where NomeFilme = @NomeFilme";
        //    DataView dv = (DataView)sds.Select(DataSourceSelectArguments.Empty);
        //    if (dv.Count != 0)

        //        Response.Write("<script>alert('Filme já existe na Base de Dados!')</script>");
        //}
        //catch
        //{
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ConnectionString);
            conn.Open();
            string insertquery = "insert into InformacaoFilme (NomeFilme, Genero, Ano, Realizador) values(@NomeFilme, @Genero, @Ano, @Realizador)";
            SqlCommand con = new SqlCommand(insertquery, conn);
            con.Parameters.AddWithValue("@NomeFilme", TextBox1.Text);
            con.Parameters.AddWithValue("@Genero", TextBox2.Text);
            con.Parameters.AddWithValue("@Ano", TextBox3.Text);
            con.Parameters.AddWithValue("@Realizador", TextBox4.Text);
            con.ExecuteNonQuery();
            Response.Write("<script>alert('Sucesso!')</script>");
            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write("Erro:" + ex.ToString());
        }
    }
}
//}