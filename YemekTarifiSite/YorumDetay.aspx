<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifiSite.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
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
            <td class="auto-style15"><strong>AD SOYAD:</strong></td>
            <td>
                <asp:TextBox ID="txtadsoyad" runat="server" Width="300px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>MAİL:</strong></td>
            <td>
                <asp:TextBox ID="txtmail" runat="server" Width="300px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>İÇERİK:&nbsp;</strong></td>
            <td>
                <asp:TextBox ID="txticerik" runat="server" Height="100px" TextMode="MultiLine" Width="300px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>YEMEK:</strong></td>
            <td>
                <asp:TextBox ID="txtyemek" runat="server" Width="300px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnonay" runat="server" BackColor="#CE7171" BorderColor="White" ForeColor="White" Height="40px" OnClick="btnonay_Click" Text="ONAYLA" Width="200px" />
            </td>
        </tr>
    </table>
</asp:Content>
