using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BackOffice_VerUtilizadores : System.Web.UI.Page
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

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("AreaAdmin.aspx");
    }
}