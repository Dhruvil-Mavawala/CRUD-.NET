<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SingIn.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
        .auto-style4 {
            height: 26px;
        }
    .auto-style9 {
        width: 451px;
        height: 28px;
    }
        .auto-style15 {
            width: 457px;
            height: 28px;
            font-size: x-large;
            text-align: center;
            color: #0000FF;
        }
    .auto-style11 {
        height: 28px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
        <td class="auto-style9"></td>
        <td class="auto-style15">
        </td>
        <td class="auto-style11">
        </td>
        </tr>
        <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style15">
            <strong>Sing Up Page</strong></td>
        <td class="auto-style11">
            &nbsp;</td>
        </tr>
        <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style15">
            &nbsp;</td>
        <td class="auto-style11">
            &nbsp;</td>
        </tr>
    <tr>
        <td class="auto-style4">Email Id :-</td>
        <td class="auto-style4">
            <asp:TextBox ID="email" runat="server" Width="197px"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Please Enter Email"></asp:RequiredFieldValidator>
        &nbsp;<br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ErrorMessage="Please enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Password :-</td>
        <td>
            <asp:TextBox ID="pass" runat="server" Width="197px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pass" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="singin" runat="server" Text="Sing In" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

