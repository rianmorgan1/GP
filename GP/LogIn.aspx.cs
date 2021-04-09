using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace GP
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_LoggedIn(object sender, EventArgs e)
        {
            if (Roles.IsUserInRole(Login1.UserName, "Doctor"))
            {
                Response.Redirect("~/DoctorArea/Doctors.aspx");
            }//end if - code allows for users to be directed to relevant page

            else if (Roles.IsUserInRole(Login1.UserName, "Patient"))
            {
                Response.Redirect("~/PatientArea/Patients.aspx");
            }// end else if - code allows for users to be directed to relevant page
        }

        protected void PasswordRecovery1_SendingMail(object sender, MailMessageEventArgs e)
        {

        }
    }
}