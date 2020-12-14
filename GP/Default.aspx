<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Welcome to GPme</h1>
        <p class="lead">Daily Dosage</p>
        <p>&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                By clicking on the button below you can request an appointment</p>
            <p>
                &nbsp;<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" PostBackUrl="~/LogIn.aspx" />
            </p>
        </div>
        <div class="col-md-4">
            <h2>Why choose GPme?</h2>
            <p>
                Every year, more than a million people use GPme for care. Our highly specialized experts are deeply experienced in treating rare and complex conditions.</p>
            <p>
                &nbsp;At GPme, every aspect of your care is co-ordinated and teams of experts work together to provide exactly the care you need. What might take months elsewhere can often be done in days here.</p>
        </div>
       
    </div>

</asp:Content>
