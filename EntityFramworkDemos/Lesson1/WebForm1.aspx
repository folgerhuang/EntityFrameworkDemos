<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EntityFramworkDemos.Lesson1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" class="text-center col-sm-12 col-xs-12 col-md-6 col-lg-6 ">
    <div >

        <asp:GridView ID="GridView1" HeaderStyle-BackColor="Green" CssClass="table table-responsive col-md-6 col-lg-6 col-sm-12 col-xs-12" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="EntityDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:TemplateField HeaderText="Employees">
                    <ItemTemplate>
                        <asp:GridView ID="GridView2"  HeaderStyle-BackColor="Green" CssClass="table table-responsive col-md-6 col-lg-6 col-sm-12 col-xs-12" runat="server" DataSource='<%# Eval("Employees") %>'>
                        </asp:GridView>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=EmployeeModelContainer" DefaultContainerName="EmployeeModelContainer" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Departments" Include="Employees">
        </asp:EntityDataSource>
        
    </div>
    </form>
</body>
</html>
