using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP.DoctorArea
{
    public partial class DoctorAppointments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lblInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["PATIENTID"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPatientId")).Text;
            SqlDataSource1.InsertParameters["DATE"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtDate")).Text;
            SqlDataSource1.InsertParameters["TIME"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtTime")).Text;
            SqlDataSource1.InsertParameters["DOCTORID"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddlDoctorId")).SelectedValue;
            SqlDataSource1.Insert();
        }
    }
}