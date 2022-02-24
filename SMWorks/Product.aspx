<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="SMWorks.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">Product</h1>
    <p class="text-right"><asp:Button ID="btnAddProduct" runat="server" Text="Add Product" PostBackUrl="~/AddProduct.aspx"/></p>
    
            <table class="w-100" border="1", style="background-color: #FFFFCC">
            <tr style="font-weight: bold;">
                <td class="text-center" style="width: 150px">Name</td>
                <td class="text-center" style="width: 150px">Category</td>
                <td class="text-center" style="width: 150px">Price</td>
                <td class="text-center">Image</td>
                <td class="text-center" style="width: 150px">Edit</td>
            </tr>
            <%=fetchProduct()%>
        </table>
</asp:Content>
