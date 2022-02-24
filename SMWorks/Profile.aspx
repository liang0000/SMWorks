<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="SMWorks.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <h1 class="text-center">Profile</h1>
    <table align="center" class="w-40">
        <tr>
            <td style="width: 280px; font-size: smaller; color: #666666;">Username:</td>
        </tr>
        <tr>
            <td style="width: 280px">
                <asp:Label ID="lblUsername" runat="server" style="font-size: larger"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 280px; font-size: smaller; color: #666666;">Email Address:</td>
        </tr>
        <tr>
            <td style="width: 280px">
                <asp:Label ID="lblEmail" runat="server" style="font-size: larger"></asp:Label>
            </td>
        </tr>
                <tr>
            <td style="width: 280px; font-size: smaller; color: #666666;">User Type:</td>
        </tr>
        <tr>
            <td style="width: 280px">
                <asp:Label ID="lblUserType" runat="server" style="font-size: larger"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 280px" class="text-center">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 280px" class="text-center">
               <% =edit() %>
            </td>
        </tr>
    </table>
</asp:Content>
