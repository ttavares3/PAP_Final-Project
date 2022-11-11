using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrontOffice_VerMensagens : System.Web.UI.Page
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
        }
    }
}