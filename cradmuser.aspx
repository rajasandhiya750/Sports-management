<%@ Page Title="" Language="C#" MasterPageFile="~/Admhome.master" AutoEventWireup="true" CodeFile="cradmuser.aspx.cs" Inherits="cradmuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 204px;
    }
    .style5
    {
        width: 100%;
    }
    #Reset1
    {
        width: 94px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
    <strong>CREATE NEW USER</strong></p>
<table class="style5">
    <tr>
        <td class="style6">
            EQUIPMENT ID</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            EQUIPMENT NAME</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Add Record" />
            <input id="Reset1" type="reset" value="reset" /></td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
<p>
    &nbsp;</p>
</asp:Content>

