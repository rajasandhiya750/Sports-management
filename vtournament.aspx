<%@ Page Title="" Language="C#" MasterPageFile="~/Studhome.master" AutoEventWireup="true" CodeFile="vtournament.aspx.cs" Inherits="vtournament" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
    <strong>VIEW TOURNAMENT</strong></p>
<p>
    DATE OF TOURNAMENT
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="FIND" />
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" DataSourceID="AccessDataSource1" ForeColor="Black" 
        GridLines="None" Height="267px" Width="872px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <Fields>
            <asp:BoundField DataField="tournid" HeaderText="tournid" 
                SortExpression="tournid" />
            <asp:BoundField DataField="tourname" HeaderText="tourname" 
                SortExpression="tourname" />
            <asp:BoundField DataField="doftourn" HeaderText="doftourn" 
                SortExpression="doftourn" />
            <asp:BoundField DataField="teampart" HeaderText="teampart" 
                SortExpression="teampart" />
            <asp:BoundField DataField="eventname" HeaderText="eventname" 
                SortExpression="eventname" />
            <asp:BoundField DataField="perform" HeaderText="perform" 
                SortExpression="perform" />
            <asp:BoundField DataField="results" HeaderText="results" 
                SortExpression="results" />
            <asp:BoundField DataField="tovenue" HeaderText="tovenue" 
                SortExpression="tovenue" />
            <asp:BoundField DataField="toteams" HeaderText="toteams" 
                SortExpression="toteams" />
        </Fields>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
    </asp:DetailsView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/sportspro.mdb" 
        SelectCommand="SELECT * FROM [tourndet] WHERE ([doftourn] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="doftourn" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
</p>
<p>
    &nbsp;</p>
</asp:Content>

