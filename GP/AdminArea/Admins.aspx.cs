using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP.AdminArea
{
    public partial class Admins : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAddUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddUsersToRoles.aspx");
        }

        protected void BtnDeleteUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteUsers.aspx");
        }
    }
}