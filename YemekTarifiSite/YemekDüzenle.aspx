<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDüzenle.aspx.cs" Inherits="YemekTarifiSite.YemekDüzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style15 {
            width: 180px;
            color: #FFFFFF;
        }
    .auto-style16 {
        width: 180px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
    <tr>
        <td class="auto-style16">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>YEMEK AD:</strong></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="300px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>MALZEMELER</strong></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Height="150px" TextMode="MultiLine" Width="300px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>TARİF:</strong></td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Height="200px" Width="300px" CssClass="tb5" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>KATEGORİ ID:</strong></td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="300px" CssClass="tb5">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">RESİM:<strong> </strong></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style16">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" BackColor="#CE7171" BorderColor="White" ForeColor="White" Height="40px" Text="GÜNCELLE" Width="300px" OnClick="Button1_Click" Font-Bold="True" />
        </td>
    </tr>
    <tr>
        <td class="auto-style16">&nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" BackColor="#CE7171" BorderColor="White" Font-Bold="True" ForeColor="White" Height="40px" Text="GÜNÜN YEMEĞİ SEÇ" Width="300px" OnClick="Button2_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style16">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
