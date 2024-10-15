<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="false" CodeFile="Ahome.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        font-size: x-large;
        text-align: center;
        color: #0033CC;
            height: 40px;
        }
        .auto-style4 {
            height: 40px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            height: 40px;
            width: 305px;
        }
        .auto-style7 {
            width: 305px;
        }
        .auto-style8 {
            width: 305px;
            height: 26px;
        }
        .auto-style9 {
            width: 305px;
            height: 24px;
        }
        .auto-style10 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style3"><strong>Product Details</strong></td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style7">Product Name :-</td>
        <td>
            <asp:TextBox ID="pname" runat="server" Width="220px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Product Description :-</td>
        <td class="auto-style5">
            <asp:TextBox ID="pdesc" runat="server" Width="220px"></asp:TextBox>
        </td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Product Image :-</td>
        <td>
            <asp:FileUpload ID="pimage" runat="server" />
            &nbsp;&nbsp;&nbsp;
            <br />
            <asp:Image ID="Image1" runat="server" Height="129px" Width="151px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style7">Product Price :-</td>
        <td>
            <asp:Button ID="Add" runat="server" Height="38px" Text="Add" Width="96px" />
            <asp:TextBox ID="pprice" runat="server" Width="220px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style10"></td>
        <td class="auto-style10"></td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
                <Columns>
                   <asp:TemplateField>
                        <ItemTemplate>
                            <img src='../PIMAGE/<%# Eval("pimage") %>' height="100" width="100" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="pid" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="pid" HeaderText="pid" ReadOnly="True" SortExpression="pid" />
                    <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                    <asp:BoundField DataField="pdesc" HeaderText="pdesc" SortExpression="pdesc" />
                    <asp:BoundField DataField="pimage" HeaderText="pimage" SortExpression="pimage" />
                    <asp:BoundField DataField="pprice" HeaderText="pprice" SortExpression="pprice" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <img src='../PIMAGE/<%# Eval("pimage") %>' height="100" width="100" />
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style5"></td>
        <td class="auto-style5"></td>
    </tr>
</table>
</asp:Content>

