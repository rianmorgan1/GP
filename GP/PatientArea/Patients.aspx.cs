using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP.PatientArea
{
    public partial class Patients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnTrack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Track.aspx");
        }

        protected void BtnAppointments_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateAppointmentPatient.aspx");
        }

        protected void BtnMedicationProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewMedication.aspx");
        }

        protected void BtnReminders_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reminders.aspx");
        }
    }
}