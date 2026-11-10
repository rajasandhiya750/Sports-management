<%@ Page Title="" Language="C#" MasterPageFile="~/Studhome.master" AutoEventWireup="true" CodeFile="vperform.aspx.cs" Inherits="vperform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
    VIEW PERFORMANCE OF STUDENTS</p>
<p>
    ENTER DATE OF COMPETITION&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="FIND" />
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="AccessDataSource1" GridLines="Horizontal" 
        Height="435px" Width="868px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <Fields>
            <asp:BoundField DataField="regno" HeaderText="regno" SortExpression="regno" />
            <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
            <asp:BoundField DataField="tourn" HeaderText="tourn" SortExpression="tourn" />
            <asp:BoundField DataField="docom" HeaderText="docom" SortExpression="docom" />
            <asp:BoundField DataField="result" HeaderText="result" 
                SortExpression="result" />
            <asp:BoundField DataField="points" HeaderText="points" 
                SortExpression="points" />
            <asp:BoundField DataField="grade" HeaderText="grade" SortExpression="grade" />
        </Fields>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    </asp:DetailsView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/sportspro.mdb" 
        SelectCommand="SELECT * FROM [sperform] WHERE ([docom] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="docom" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
</p>
<p>
    &nbsp;</p>
</asp:Content>

