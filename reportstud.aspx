<%@ Page Title="" Language="C#" MasterPageFile="~/Studhome.master" AutoEventWireup="true" CodeFile="reportstud.aspx.cs" Inherits="reportstud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
</p>
<p>
    ENTER REGISTER NUMBER
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" />
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" 
        Height="301px" Width="862px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="regno" HeaderText="regno" SortExpression="regno" />
            <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
            <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="locat" HeaderText="locat" SortExpression="locat" />
            <asp:BoundField DataField="sports" HeaderText="sports" 
                SortExpression="sports" />
            <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
            <asp:BoundField DataField="perform" HeaderText="perform" 
                SortExpression="perform" />
            <asp:BoundField DataField="comments" HeaderText="comments" 
                SortExpression="comments" />
            <asp:BoundField DataField="grade" HeaderText="grade" SortExpression="grade" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/sportspro.mdb" 
        SelectCommand="SELECT * FROM [sregister] WHERE ([regno] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="regno" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        CellPadding="4" DataSourceID="AccessDataSource2" ForeColor="#333333" 
        GridLines="None" Height="338px" Width="416px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
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
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/sportspro.mdb" 
        SelectCommand="SELECT * FROM [sperform] WHERE ([regno] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="regno" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="AccessDataSource2" 
        Height="380px" Width="441px">
        <Series>
            <asp:Series Name="Series1" XValueMember="points" YValuesPerPoint="2" 
                ChartType="SplineArea" YValueMembers="grade">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
</p>
<p>
</p>
</asp:Content>

