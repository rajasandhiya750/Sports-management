<%@ Page Title="" Language="C#" MasterPageFile="~/Admhome.master" AutoEventWireup="true" CodeFile="addequip.aspx.cs" Inherits="addequip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style5
    {
        width: 100%;
    }
    .style6
    {
        width: 204px;
    }
    #Reset1
    {
        width: 57px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
    <strong>EQUIPMENT STOCK</strong></p>
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
            QUANTITY</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            PURPOSE</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            USAGE</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            DATE OF PURCHASE</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            INCHARGE</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="ADD RECORD" />
            <input id="Reset1" type="reset" value="reset" />&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
<p>
    &nbsp;</p>
</asp:Content>

