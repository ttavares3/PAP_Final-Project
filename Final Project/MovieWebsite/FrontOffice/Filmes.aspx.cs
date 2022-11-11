using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;
using System.Data;
using System.IO;

public partial class FrontOffice_Filmes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FileUpload1.Visible = false;
        Button1.Visible = false;
        GridView1.Visible = false;
        ImageButton2.Visible = false;

        if (!Page.IsPostBack)
        {
            if (Session["SessaoAdministrador"] != null)
            {
                FileUpload1.Visible = true;
                Button1.Visible = true;
                GridView1.Visible = true;
                ImageButton2.Visible = true;
                ligagrid();
            }
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string extensao = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (extensao.ToLower() != ".gif" && extensao.ToLower() != ".png" && extensao.ToLower() !=".jpg" && extensao.ToLower() != ".jpeg")
            {
                Response.Write("<script>alert('A imagem não satisfaz os parametros')</script>");
            }
            else
            {
                int tamanho = FileUpload1.PostedFile.ContentLength;
                if (tamanho > 1048576)
                {
                    Response.Write("<script>alert('Ultrapassou o tamanho máximo')</script>");
                }
                else
                {
                    string caminho1 = "~/imagens/" + Path.GetFileName(FileUpload1.PostedFile.FileName);
                    SqlConnection con = new
                    SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ConnectionString);
                    SqlCommand cmd = new SqlCommand("insert into Filme (path) values('" + caminho1 + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    FileUpload1.SaveAs(Server.MapPath("~/imagens/" + FileUpload1.FileName));
                    Response.Write("<script>alert('Imagem Inserida')</script>");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('Por favor selecione uma imagem')</script>");
        }
    }
    public void ligagrid()
    {
        SqlConnection con = new
        SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ConnectionString);
        SqlCommand cmd = new SqlCommand("select * from Filme", con);
        con.Open();
        SqlDataReader le = cmd.ExecuteReader();
        GridView1.DataSource = le;
        GridView1.DataBind();
        con.Close();
    }

}