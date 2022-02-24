<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SMWorks.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1>New Arrivals</h1>
    <table class="w-100">
        <tr>
            <td>
                <img src="Images/banner/puzzles.jpg" style="width: 318px; height: 279px" /></td>
            <td style="width: 443px">
                <img src="Images/banner/books.jpg" style="width: 318px; height: 279px" /></td>
            <td>
                <img src="Images/banner/masks.jpg" style="width: 318px; height: 279px" /></td>
        </tr>
        <tr>
            <td class="text-center">Give hours for fun</td>
            <td style="width: 443px" class="text-center">6x6 Hardcover Book</td>
            <td class="text-center">Masks for kids</td>
        </tr>
        <tr>
            <td class="text-center"><a href ="Shop.aspx" style="color: #FF9900" ><strong>PUZZLES &gt;&gt;</strong></a></td>
            <td style="width: 443px" class="text-center"><a href ="Shop.aspx" style="color: #FF9900" ><strong>INSTANT BOOKS &gt;&gt;</strong></a></td>
            <td class="text-center"><a href ="Shop.aspx" style="color: #FF9900" ><strong>CLOTH FACE MASKS &gt;&gt;</strong></a></td>
        </tr>
    </table>
    
</asp:Content>
