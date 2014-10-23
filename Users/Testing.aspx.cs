using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// Send user to first/prev/next/last question in a set
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Nav_Click(object sender, EventArgs e)
    {
        Button btnNav = (Button)sender;
        btnNav.Text = btnNav.Text.ToUpper();

        //Checks for nav button type
        if(btnNav.Text == "FIRST")
            //send to first question in set
        else if (btnNav.Text == "PREV")
            //send to prev question
        else if (btnNav.Text == "NEXT")
            //send to next question
        else if (btnNav.Text == "LAST")
            //send to last question in set
    }
}