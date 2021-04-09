using System.Web.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP.AdminArea
{
    public partial class AddUsersToRoles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.DataSource = Membership.GetAllUsers();
                DropDownList1.DataBind();

                DropDownList2.DataSource = Roles.GetAllRoles();
                DropDownList2.DataBind();

            }//end if 
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string userName, roleName;
            userName = DropDownList1.SelectedValue;
            roleName = DropDownList2.SelectedValue;

            try
            {
                if (Roles.IsUserInRole(userName, roleName))
                {
                    lblResult.Text = "This user is already in that role";
                }// end if

                else
                {
                    Roles.AddUserToRole(userName, roleName);
                    lblResult.Text = userName + " has been added to the role of " + roleName;
                    //rebind users and roles to drop down lists
                    DropDownList1.DataSource = Membership.GetAllUsers();
                    DropDownList1.DataBind();
                    DropDownList2.DataSource = Roles.GetAllRoles();
                    DropDownList2.DataBind();
                } //end else
            }// end try
            catch
            {
                lblResult.Text = "A run-time error has ocurred";
            }
        }// end else
    }
}
