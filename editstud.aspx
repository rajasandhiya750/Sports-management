<%@ Page Title="" Language="C#" MasterPageFile="~/Studhome.master" AutoEventWireup="true" CodeFile="editstud.aspx.cs" Inherits="editstud" %>

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
        MODIFY STUDENT INFORMATION</p>
<table class="style5">
    <tr>
        <td class="style6">
            REGISTER NUMBER</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="FIND" />
            <asp:Label ID="Label2" runat="server" ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style6">
            STUDENT NAME</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            DEPARTMENT</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            GENDER</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            LOCATION</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            SPORTS</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            MAIL</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            MOBILE</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            PERFORMANCE</td>
        <td>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            COMMENTS</td>
        <td>
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            GRADE</td>
        <td>
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="UPDATE" />
            <input id="Reset1" type="reset" value="reset" />&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
    <p>
    </p>
</asp:Content>

