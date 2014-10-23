using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Masterpages__LoggedIn : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Authorized access logic
        if(!IsPostBack)
        {
            //if user isn't authenticated
            //redirect to login page
        }
    }

    protected void lbnLogout_Click(object sender, EventArgs e)
    {
        //remove cookie from client system
        //terminate the active session
    }
}