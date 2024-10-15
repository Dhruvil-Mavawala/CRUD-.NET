<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SingUp.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        width: 451px;
    }
    .auto-style5 {
        width: 457px;
            margin-left: 40px;
        }
    .auto-style6 {
        width: 451px;
        height: 38px;
    }
    .auto-style7 {
        width: 457px;
        height: 38px;
    }
    .auto-style8 {
        height: 38px;
    }
    .auto-style9 {
        width: 451px;
        height: 28px;
    }
    .auto-style10 {
        width: 457px;
        height: 28px;
    }
    .auto-style11 {
        height: 28px;
    }
    .auto-style12 {
        width: 451px;
        height: 29px;
    }
    .auto-style13 {
        width: 457px;
        height: 29px;
    }
    .auto-style14 {
        height: 29px;
            margin-left: 40px;
        }
        .auto-style15 {
            width: 457px;
            height: 28px;
            font-size: x-large;
            text-align: center;
            color: #0000FF;
        }
        .auto-style16 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style15">
            &nbsp;</td>
        <td class="auto-style11">
            &nbsp;</td>
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
        <td class="auto-style10">
            &nbsp;</td>
        <td class="auto-style11">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">User Name :-</td>
        <td class="auto-style13">
            <asp:TextBox ID="uname" runat="server" Width="197px"></asp:TextBox>
        </td>
        <td class="auto-style16">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uname" ErrorMessage="Please Enter Uname"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Password :-</td>
        <td class="auto-style5">
            <asp:TextBox ID="pass" runat="server" Width="198px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">Confirm Password :-</td>
        <td class="auto-style13">
            <asp:TextBox ID="cpass" runat="server" Width="198px"></asp:TextBox>
        </td>
        <td class="auto-style14">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="cpass" ErrorMessage="Please enter same password"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Mobile No. :-</td>
        <td class="auto-style5">
            <asp:TextBox ID="mobile" runat="server" Width="198px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">Email Id :-</td>
        <td class="auto-style13">
            <asp:TextBox ID="email" runat="server" Width="198px"></asp:TextBox>
        </td>
        <td class="auto-style14">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ErrorMessage="Please enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style7">
            <asp:Button ID="singup" runat="server" Text="Sign Up" Width="125px" />
            &nbsp;</td>
        <td class="auto-style8"></td>
    </tr>
</table>
</asp:Content>

