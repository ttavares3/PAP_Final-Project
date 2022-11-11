using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class FrontOffice_AreaPessoal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["SessaoUtilizador"] != null)
            {
                Label1.Text += Session["SessaoUtilizador"].ToString();
                Label2.Text += Session["SessaoUtilizadorID"].ToString();
            }

            else
            {
                Response.Redirect("Login.aspx");
            }

           ImageButton6.Attributes["Onclick"] = "return confirm('Quer mesmo Actualizar os Dados?')";
            
        }
    }


    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["SessaoUtilizador"] = null;
        Response.Redirect("Login.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = true;
        string LID = Label2.Text;
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ToString());
        SqlCommand sqlCmd = new SqlCommand("select * from [Users] where [Id] = @LID", connection);
        sqlCmd.Parameters.Add(new SqlParameter("@LID", LID));
        connection.Open();
        SqlDataReader reader = sqlCmd.ExecuteReader();

        try
        {
            if (reader.Read())
            {
                TextBox2.Enabled = false;
                TextBox3.Enabled = false;


                TextBox2.Text = reader["User"].ToString();
                TextBox3.Text = reader["Email"].ToString();

                reader.Close();
                connection.Close();
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "<script>alert('Foi impossivel carregar os seus dados!')</script>";
            }

        }
        catch (Exception ex)
        {
            Response.Write("Erro:" + ex.ToString());
        }
}

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        TextBox2.Enabled = true;
        TextBox3.Enabled = true;

        ImageButton5.Enabled = true;
        ImageButton5.Visible = true;
    }

    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ConnectionString);
            conn.Open();
            string insertquery = "Update [Users] SET [User] = @utilizador, Email = @Email where Id = @Id";

            SqlCommand con = new SqlCommand(insertquery, conn);
            con.Parameters.AddWithValue("@utilizador", TextBox2.Text);
            con.Parameters.AddWithValue("@Email", TextBox3.Text);
            con.Parameters.AddWithValue("@Id", Label2.Text);

            con.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Erro:" + ex.ToString());
        }
    }

    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ConnectionString);
            conn.Open();
            string deletequery = "Delete from [Users] where [User] = @utilizador";
            SqlCommand con = new SqlCommand(deletequery, conn);

            con.Parameters.AddWithValue("@utilizador", TextBox2.Text);
            con.Parameters.AddWithValue("@Email", TextBox3.Text);
            con.Parameters.AddWithValue("@Id", Label2.Text);
            con.ExecuteNonQuery();
            conn.Close();
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            RequiredFieldValidator1.Visible = false;
            RequiredFieldValidator2.Visible = false;
            RegularExpressionValidator1.Visible = false;
        }
        catch (Exception ex)
        {
            Response.Write("Erro:" + ex.ToString());
        }
    }

    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = false;
    }
}