<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="SMWorks.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Edit Profile</h1>
    <table align="center" class="w-40">
        <tr>
            <td>Username&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot be blank!" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 197px">
                <asp:TextBox ID="txtUsername" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email Address&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrect Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 197px">
                <asp:TextBox ID="txtEmail" runat="server" Width="300px" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Cannot be blank!" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 197px">
                <asp:TextBox ID="txtPassword" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td style="width: 197px" class="text-center">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Button ID="btnDone" runat="server" Text="Done" OnClick="btnDone_Click" />
&nbsp;
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" CausesValidation="False" />
            &nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="False" PostBackUrl="~/Profile.aspx" />
            </td>
        </tr>
    </table>
</asp:Content>
