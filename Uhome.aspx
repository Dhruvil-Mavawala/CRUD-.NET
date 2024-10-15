<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="Uhome.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table class="auto-style3">
        <tr>
            <td>
                <asp:Label ID="name" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="email" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pid" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="pid" HeaderText="pid" ReadOnly="True" SortExpression="pid" />
            <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
            <asp:BoundField DataField="pdesc" HeaderText="pdesc" SortExpression="pdesc" />
            <asp:BoundField DataField="pimage" HeaderText="pimage" SortExpression="pimage" />
            <asp:BoundField DataField="pprice" HeaderText="pprice" SortExpression="pprice" />
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <img src='PIMAGE/<%#Eval("pimage")%>' height="100" width="100" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="pid" DataNavigateUrlFormatString="purchase.aspx?id={0}" HeaderText="Details" NavigateUrl="~/purchase.aspx" Text="Details" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database2ConnectionString1 %>" DeleteCommand="DELETE FROM [Product_mstr] WHERE [pid] = @pid" InsertCommand="INSERT INTO [Product_mstr] ([pname], [pdesc], [pimage], [pprice]) VALUES (@pname, @pdesc, @pimage, @pprice)" ProviderName="<%$ ConnectionStrings:Database2ConnectionString1.ProviderName %>" SelectCommand="SELECT [pid], [pname], [pdesc], [pimage], [pprice] FROM [Product_mstr]" UpdateCommand="UPDATE [Product_mstr] SET [pname] = @pname, [pdesc] = @pdesc, [pimage] = @pimage, [pprice] = @pprice WHERE [pid] = @pid">
        <DeleteParameters>
            <asp:Parameter Name="pid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="pname" Type="String" />
            <asp:Parameter Name="pdesc" Type="String" />
            <asp:Parameter Name="pimage" Type="String" />
            <asp:Parameter Name="pprice" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="pname" Type="String" />
            <asp:Parameter Name="pdesc" Type="String" />
            <asp:Parameter Name="pimage" Type="String" />
            <asp:Parameter Name="pprice" Type="Int32" />
            <asp:Parameter Name="pid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
</asp:Content>

