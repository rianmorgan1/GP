using System.Web.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP
{
    public partial class CreateUsersRoles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRun_Click(object sender, EventArgs e)
        {
            try
            {
                // 3 roles created admin,doctor,patient
                Roles.CreateRole("Doctor");
                Roles.CreateRole("Patient");
                Roles.CreateRole("Admin");

                // 3 accounts created with usernames and passwords
                Membership.CreateUser("santos", "Doctor123!");
                Membership.CreateUser("gunna", "Patient123!");
                Membership.CreateUser("morgan", "Admin123!");

                // 3 users assigned 3 roles
                Roles.AddUserToRole("santos", "Doctor");
                Roles.AddUserToRole("gunna", "Patient");
                Roles.AddUserToRole("morgan", "Admin");

                lblResult.Text = "Roles users assigned and created";
            }
            
            catch (Exception ex)
            {
                // exception ex is used here for developers
                // can see errors
                lblResult.Text = ex.ToString();
            }
        }
    }
}