<%@ Page Title="" Language="C#" MasterPageFile="~/Studhome.master" AutoEventWireup="true" CodeFile="vteams.aspx.cs" Inherits="vteams" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
    <strong>VIEW TEAMS</strong></p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" 
        Height="342px" Width="810px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="teamid" HeaderText="teamid" 
                SortExpression="teamid" />
            <asp:BoundField DataField="tname" HeaderText="tname" SortExpression="tname" />
            <asp:BoundField DataField="players" HeaderText="players" 
                SortExpression="players" />
            <asp:BoundField DataField="sport" HeaderText="sport" SortExpression="sport" />
            <asp:BoundField DataField="perform" HeaderText="perform" 
                SortExpression="perform" />
            <asp:BoundField DataField="scorep" HeaderText="scorep" 
                SortExpression="scorep" />
            <asp:BoundField DataField="gradep" HeaderText="gradep" 
                SortExpression="gradep" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/sportspro.mdb" SelectCommand="SELECT * FROM [teamsdet]">
    </asp:AccessDataSource>
</p>
<p>
    &nbsp;</p>
</asp:Content>

