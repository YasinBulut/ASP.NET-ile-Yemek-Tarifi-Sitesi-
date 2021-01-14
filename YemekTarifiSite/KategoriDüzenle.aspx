<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDüzenle.aspx.cs" Inherits="YemekTarifiSite.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-align: right;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>KATEGORİ AD:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>KATEGORİ ADET:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>RESİM:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#CE7171" BorderColor="White" ForeColor="White" Height="40px" OnClick="Button1_Click" Text="GÜNCELLE" Width="200px" />
            </td>
        </tr>
    </table>
</asp:Content>
