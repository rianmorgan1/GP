using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login3_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (RoleServiceManager.IsUserInRole(Login3.UserName, "Doctor"))
            {
                Response.Redirect("~/DoctorArea/Doctors.aspx");
            } //end if

            else if (RoleServiceManager.IsUserInRole(Login3.UserName, "Patient"))
            {
                Response.Redirect("~/PatientArea/Patient.aspx");
            }//end else if
        }
    }
}