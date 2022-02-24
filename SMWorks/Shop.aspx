<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="SMWorks.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <h1 class="text-center">SHOP</h1>
    <table style="width: 30%" align="center">
        <tr>
            <td>Product Name:</td>
            <td>
                <asp:TextBox ID="txtProdName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <table class="w-100" border="1", style="background-color: #FFFFCC">
            <tr style="font-weight: bold;">
                <td class="text-center" style="width: 150px">Name</td>
                <td class="text-center" style="width: 150px">Category</td>
                <td class="text-center" style="width: 150px">Price</td>
                <td class="text-center">Image</td>
            </tr>
            <%=fetchProduct()%>
        </table>
    </asp:Panel>
    <br />
</asp:Content>
