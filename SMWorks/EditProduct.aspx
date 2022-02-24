<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="SMWorks.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <h1 class="text-center">Edit Product</h1>
    <table style="width: 60%" align="center">
        <tr>
            <td style="width: 374px" class="text-right">Product Name:</td>
            <td style="width: 532px">
                <asp:TextBox ID="txtProdName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter a Product Name" ControlToValidate="txtProdName" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 374px" class="text-right">Category:</td>
            <td style="width: 532px">
                <asp:DropDownList ID="ddlProdCate" runat="server">
                    <asp:ListItem>Books</asp:ListItem>
                    <asp:ListItem>Puzzles</asp:ListItem>
                    <asp:ListItem>Ornaments</asp:ListItem>
                    <asp:ListItem>Masks</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 374px" class="text-right">Price (RM):</td>
            <td style="width: 532px">
                <asp:TextBox ID="txtProdPrice" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtProdPrice" ErrorMessage="Invalid Value. Double Required!" ForeColor="Red" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 374px" class="text-right">Image:</td>
            <td style="width: 532px">
                <asp:FileUpload ID="fuProdImage" runat="server" /><br/>
            </td>
        </tr>
        <tr>
            <td style="width: 374px">
                &nbsp;</td>
            <td style="width: 532px">

            </td>
        </tr>
        <tr>
            <td style="width: 374px">
                &nbsp;</td>
            <td style="width: 532px">
                <asp:Button ID="btnDone" runat="server" Text="Done" OnClick="btnDone_Click"/>
                <asp:Button ID="btnDelete" runat="server" Text="Delete" CausesValidation="False" OnClick="btnDelete_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="False" PostBackUrl="~/Product.aspx" />
            </td>
        </tr>
    </table>
</asp:Content>
