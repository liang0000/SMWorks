<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="SearchArtist.aspx.cs" Inherits="SMWorks.SearchArtist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1 class="text-center">Search Artist</h1>
    <table style="width: 30%" align="center">
        <tr>
            <td>Artist Name:</td>
            <td>
                <asp:TextBox ID="txtArtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
            </td>
        </tr>
    </table>
    <br />
        <div class="text-center">
    <asp:Panel ID="Panel1" runat="server" style="width: 100%">
        <table class="w-90" border="1" align="center", style="background-color: #FFFFCC">
            <tr style="font-weight: bold;">
                <td style="height: 26px; width: 90px;" class="text-center">Name</td>
                <td style="height: 26px; width: 232px;" class="text-center">Email</td>
            </tr>
            <%=fetchArtist()%>
        </table>
    </asp:Panel>
        </div>
    <br />
</asp:Content>
