<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SMWorks.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Register</h1>
    <table align="center" class="w-40">
        <tr>
            <td>Username&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Don't leave it blank!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 197px">
                <asp:TextBox ID="txtUsername" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email Address&nbsp; <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrect Email Format" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 197px">
                <asp:TextBox ID="txtEmail" runat="server" Width="300px" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Don't leave it blank!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 197px">
                <asp:TextBox ID="txtPassword" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 197px">User Type</td>
        </tr>
        <tr>
            <td style="width: 197px">
                <asp:DropDownList ID="ddlUserType" runat="server">
                    <asp:ListItem>Member</asp:ListItem>
                    <asp:ListItem>Artist</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 197px" class="text-center">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 197px" class="text-center">
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
&nbsp;
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" CausesValidation="False" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
        <p class="text-center">
        <asp:LinkButton ID="lbnLogin" runat="server" OnClick="lbnLogin_Click" CausesValidation="False">Already have an account?</asp:LinkButton></p>
<div class="text-center">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="One or more fields were entered incorrectly." />
</div>
</asp:Content>
