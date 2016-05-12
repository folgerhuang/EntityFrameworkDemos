<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="EntityFramworkDemos.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
    <div>
    
        <asp:GridView ID="GridView1" HeaderStyle-BackColor="#ff6666" CssClass="table table-responsive col-lg-6 col-md-12 col-sm-12 col-xs-12" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="EntityDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            </Columns>
            <HeaderStyle BackColor="#FF6666" />
        </asp:GridView>
        <asp:DetailsView ID="DetailsView1"  FieldHeaderStyle-CssClass="alert-success" CssClass="table table-responsive col-lg-6 col-md-12 col-sm-12 col-xs-12" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="EntityDataSource1" DefaultMode="Insert" Height="50px" Width="125px" OnItemInserted="DetailsView1_ItemInserted">
            <FieldHeaderStyle CssClass="alert-success" />
            <Fields>
                <asp:BoundField DataField="id" Visible="false" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=CompanyEntities" DefaultContainerName="CompanyEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Companies">
        </asp:EntityDataSource>
    
    </div>
    </form>
</body>
</html>
