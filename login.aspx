<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 100%;
    }
    .style4
    {
        width: 0;
        height: 0;
    }
    .style5
    {
        width: 169px;
        height: 152px;
    }
    .style6
    {
        width: 171px;
    }
    .style7
    {
        }
    .style8
    {
        width: 408px;
        text-align: right;
        font-weight: bold;
    }
    #Reset1
    {
        width: 71px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
    <table class="style3">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style6">
                <img alt="cd" class="style4" 
                    src="images/box-full-sport-equipments_1308-37207.jpg" /><img alt="df" 
                    class="style4" src="images/vector-users-icon.jpg" /><img alt="vc" 
                    class="style4" src="images/vector-users-icon.jpg" /><img alt="cs" 
                    class="style5" src="images/image_processing20220801-17461-u0s3j8.png" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                USERNAME</td>
            <td class="style6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Must have UserName" 
                    ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                PASSWORD</td>
            <td class="style6">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Must have Password" 
                    ForeColor="#CC3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style6">
                <asp:Button ID="Button1" runat="server" Text="Login" Width="70px" 
                    onclick="Button1_Click" />
                <input id="Reset1" type="reset" value="reset" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" colspan="3">
                <asp:Label ID="Label1" runat="server" style="text-align: center"></asp:Label>
            </td>
        </tr>
    </table>
</p>
</asp:Content>

