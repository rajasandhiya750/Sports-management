<%@ Page Title="" Language="C#" MasterPageFile="~/Admhome.master" AutoEventWireup="true" CodeFile="AdmHome.aspx.cs" Inherits="AdmHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style5
    {
        width: 714px;
        height: 260px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
    <strong>ADMIN DASHBOARD</strong></p>
<p>
    <img alt="CD" class="style5" 
        src="images/pngtree-red-running-sport-background-banner-image_139653.jpg" /></p>
<p>
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
</p>
</asp:Content>

