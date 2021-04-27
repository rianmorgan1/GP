<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="GP.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>About GPme</h3>
    <p>Since the introduction of the NHS in 1948 (National Archives, 2020), UK citizens have enjoyed the service of free health care, 
        including free and regular visits to their local General Practitioner (GP).  
        In September 2020 alone, 26.7 million people across the UK had an appointment with their GP (NHS Digital, 2020). 
        This huge demand in service combined with staff shortages, underfunding from the government, the mental health crisis and a global pandemic has put huge pressure on GPs, their services and efficiency (NHS Digital, 2020; Iacobucci, 2020). 
        With increasing pressure, comes an increase in problems with the current system. 
        The GPme web application will focus on solving relating to lengthy waiting times, medication adherence, appointment attendance and the general awareness of self-care and health.
        This will bring benefits to both the GP branches who promote the application as well as the patients who wish to use it due to the fact that public traffic will decrease leading to a less stressful environment and patients will be more in tune with their own conditions.  </p>
    <table class="nav-justified">
        <tr>
            <td style="width: 515px">
    <img src="Images/articleimage.jpg" style="width: 491px; height: 278px" /></td>
            <td style="width: 521px">
                <img alt="NHS" src="Images/NHS-staff-wellbeing.jpg" style="width: 491px; height: 278px" /></td>
            <td>
                <img alt="Doctor" src="Images/Doctors-Finance-Body-1-scaled.jpg" style="width: 491px; height: 278px" /></td>
        </tr>
        <tr>
            <td style="width: 515px">&nbsp;</td>
            <td style="width: 521px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
