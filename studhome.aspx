<%@ Page Title="" Language="C#" MasterPageFile="~/Studhome.master" AutoEventWireup="true" CodeFile="studhome.aspx.cs" Inherits="studhome" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style5
    {
        width: 305px;
        height: 248px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
    <strong>STUDENT DASHBOARD</strong></p>
<p>
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <img alt="CS" class="style5" 
        src="images/sports-cannabis-marijuana-testing.png" /><asp:Chart ID="Chart1" 
        runat="server" DataSourceID="AccessDataSource1">
        <series>
            <asp:Series Name="Series1" ChartType="StackedArea" XValueMember="points" 
                YValueMembers="grade">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/sportspro.mdb" 
        SelectCommand="SELECT [points], [grade] FROM [sperform]">
    </asp:AccessDataSource>
</p>
</asp:Content>

