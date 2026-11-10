<%@ Page Title="" Language="C#" MasterPageFile="~/Studhome.master" AutoEventWireup="true" CodeFile="vequip.aspx.cs" Inherits="vequip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
    <strong>VIEW EQUIPMENTS</strong></p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" 
        Height="285px" Width="894px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="equipid" HeaderText="equipid" 
                SortExpression="equipid" />
            <asp:BoundField DataField="equipname" HeaderText="equipname" 
                SortExpression="equipname" />
            <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
            <asp:BoundField DataField="purpose" HeaderText="purpose" 
                SortExpression="purpose" />
            <asp:BoundField DataField="usage" HeaderText="usage" SortExpression="usage" />
            <asp:BoundField DataField="dopur" HeaderText="dopur" SortExpression="dopur" />
            <asp:BoundField DataField="incharge" HeaderText="incharge" 
                SortExpression="incharge" />
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
        DataFile="~/sportspro.mdb" SelectCommand="SELECT * FROM [Equipstock]">
    </asp:AccessDataSource>
</p>
<p>
    &nbsp;</p>
</asp:Content>

