<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SMWorks.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1 class="text-center">Login</h1>
    <table style="width: 40%" align="center">
        <tr>
            <td style="width: 239px" class="text-center">Username:</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 239px" class="text-center">Password:</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 239px">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
            </td>
            <td>
                <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
                <asp:LinkButton ID="lbnFgtPss" runat="server" OnClick="lbnFgtPss_Click1">Forgot Password?</asp:LinkButton>
            </td>
        </tr>
    </table>
    <p class="text-center">
        <asp:LinkButton ID="lbnRegister" runat="server" OnClick="lbnRegister_Click">Don't have an account yet?</asp:LinkButton></p>
        </asp:Content>
