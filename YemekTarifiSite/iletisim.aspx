<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekTarifiSite.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            text-align: right;
            color: #FFFFFF;
        }
        .auto-style11 {
            font-size: 20pt;
            color: #CC0066;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style12 {
            text-align: right;
            color: #FFFFFF;
            height: 29px;
        width: 707px;
    }
        .auto-style13 {
            height: 29px;
        }
    .auto-style14 {
        text-align: right;
        color: #FFFFFF;
        width: 707px;
        height: 25px;
    }
    .auto-style15 {
        width: 707px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style11" colspan="2"><strong>MESAJ PANELİ</strong></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>AD-SOYAD:</strong></td>
            <td>
                <asp:TextBox ID="txtgonderen" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>MESAJ KONU:</strong></td>
            <td>
                <asp:TextBox ID="txtmesajbaslik" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>MAİL ADRESİ:</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="txtmail" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">MESAJ<strong>:</strong></td>
            <td>
                <asp:TextBox ID="txtmesaj1" runat="server" Height="100px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#CE7171" BorderColor="White" ForeColor="White" OnClick="Button1_Click" Text="GÖNDER" Width="200px" Height="50px" />
            </td>
        </tr>
    </table>
</asp:Content>
