<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="SMWorks.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1 class="text-center">Add Your Product</h1>
    <table style="width: 100%" align="center">
        <tr>
            <td style="width: 489px" class="text-right">Product Name:</td>
            <td>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtProdName" runat="server"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter a Product Name" ControlToValidate="txtProdName" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 489px" class="text-right">Category:</td>
            <td>
                &nbsp;&nbsp;
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
            <td style="width: 489px" class="text-right">Price (RM):</td>
            <td>
                &nbsp;&nbsp;
                <asp:TextBox ID="txtProdPrice" runat="server"></asp:TextBox>
                &nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtProdPrice" ErrorMessage="Invalid Value. Integer Required!" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 489px" class="text-right">Image:</td>
            <td>
                &nbsp;&nbsp;
                <asp:FileUpload ID="fuProdImage" runat="server" />
                &nbsp;
                
            </td>
        </tr>
            <tr>
            <td style="width: 489px" class="text-right">
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Upload Product Image" ControlToValidate="fuProdImage" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 489px" class="text-right">
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 489px" class="text-right">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" CausesValidation="False" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" PostBackUrl="~/Product.aspx" CausesValidation="False" />
            </td>
        </tr>
    </table>
</asp:Content>
