using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;

public partial class FrontOffice_Contactos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string para = TextBox1.Text;
        string assunto = TextBox2.Text;
        string corpo = TextBox3.Text;

        try
        {
            using (MailMessage mensagem = new MailMessage("contatesteaspx@gmail.com", TextBox1.Text))
            {
                mensagem.Subject = TextBox2.Text;
                mensagem.Body = TextBox3.Text;

                //if (FileUpload1.HasFile)
                //{

                //    string ficheiro = Path.GetFileName(FileUpload1.PostedFile.FileName);
                //    mensagem.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, ficheiro));
                //}
                mensagem.IsBodyHtml = false;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com"; smtp.EnableSsl = true;
                NetworkCredential credenciais = new NetworkCredential("contatesteaspx@gmail.com", "fritarapipoca");
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = credenciais;
                smtp.Port = 587;
                smtp.Send(mensagem);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email enviado com Sucesso.');", true);
                //Limpaformulario(Page.Controls);
            }
        }
        catch
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Impossível enviar. Verifique os dados ou tente mais tarde');", true);
        }
    }
}