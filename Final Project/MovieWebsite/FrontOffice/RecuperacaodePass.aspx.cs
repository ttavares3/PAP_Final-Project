using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Configuration;
using System.Data.SqlClient;

public partial class FrontOffice_RecuperacaodePass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void recuperarpass(object sender, EventArgs e)
    {
        string username = string.Empty;
        string password = string.Empty;
        string constr = ConfigurationManager.ConnectionStrings["ConnectionStringRegisto"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT [User], Password FROM [Users] WHERE Email = @Email"))
            {
                cmd.Parameters.AddWithValue("@Email", TextBox1.Text.Trim());
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    if (sdr.Read())
                    {
                        username = sdr["User"].ToString();
                        password = sdr["Password"].ToString();
                    }
                }
                con.Close();
            }
        }
        if (!string.IsNullOrEmpty(password))
        {
            MailMessage mm = new MailMessage("contatesteaspx@gmail.com", TextBox1.Text.Trim());
            mm.Subject = "Password Recovery";
            mm.Body = string.Format("Olá {0},<br /><br />A sua Password é: {1}.<br /><br />Obrigado.", username, password);
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential();
            NetworkCred.UserName = "contatesteaspx@gmail.com";
            NetworkCred.Password = "fritarapipoca";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            Response.Write("<script>alert('A palavra-passe foi enviada para o seu email!')</script>");
        }
        else
        {
            Response.Write("<script>alert('O seu email não está nos nossos registos!')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = string.Empty;
        TextBox1.Focus();
    }
}