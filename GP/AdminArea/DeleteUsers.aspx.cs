using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;

namespace GP.AdminArea
{
    public partial class DeleteUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void YesButton_Click(object sender, EventArgs e)
        {
            Membership.DeleteUser(User.Identity.Name, DeleteRelatedData.Checked);

            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}