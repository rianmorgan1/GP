﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GP.DoctorArea
{
    public partial class Doctors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnDoctorAppointments_Click(object sender, EventArgs e)
        {
            Response.Redirect("DoctorAppointments.aspx");
        }
    }
}