<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Welcome to GPme</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                By clicking on the button below you can request an appointment</p>
            <p>
                &nbsp;<asp:Button ID="Button1" runat="server" Text="Button" />
            </p>
        </div>
        <div class="col-md-4">
            <h2>Why choose GPme?</h2>
            <p>
                Every year, more than a million people use GPme for care. Our highly specialized experts are deeply experienced in treating rare and complex conditions.</p>
            <p>
                &nbsp;At Mayo Clinic, every aspect of your care is coordinated and teams of experts work together to provide exactly the care you need. What might take months elsewhere can often be done in days here.</p>
        </div>
       
    </div>

</asp:Content>
