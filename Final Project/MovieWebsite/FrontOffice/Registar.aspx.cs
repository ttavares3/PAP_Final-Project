using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class FrontOffice_Registar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource sds = new SqlDataSource();
            sds.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ToString();
            sds.SelectParameters.Add("Utilizador", TypeCode.String, TextBox5.Text);
            //sds.SelectParameters.Add("Password", TypeCode.String, TextBox2.Text);
            sds.SelectCommand = "Select * from [Users] where [User] = @Utilizador and [Password] = @Password COLLATE SQL_latin1_General_CP1_CS_AS";
            DataView dv = (DataView)sds.Select(DataSourceSelectArguments.Empty);
            if (dv.Count != 0)

                Response.Write("<script>alert('Utilizador Existente!')</script>");
            
        }
        catch
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ConnectionString);
                conn.Open();
                string insertquery = "insert into [Users]([User], Email, Password) values(@User, @Email, @Password)";
                SqlCommand con = new SqlCommand(insertquery, conn);
                con.Parameters.AddWithValue("@User", TextBox5.Text);
                con.Parameters.AddWithValue("@Email", TextBox6.Text);
                con.Parameters.AddWithValue("@Password", TextBox7.Text);
                con.ExecuteNonQuery();
                //Response.Redirect("Gestor.aspx");
                Response.Write("<script>alert('Sucesso!')</script>");
                conn.Close();
            }

            catch (Exception ex)
            {
                Response.Write("Erro:" + ex.ToString());
            }
        }
    }
}