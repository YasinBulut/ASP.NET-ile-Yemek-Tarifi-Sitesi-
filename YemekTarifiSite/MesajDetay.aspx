<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="YemekTarifiSite.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style27 {
            background-color: #FFFFFF;
        }
                

        .auto-style25 {
            font-size: 16pt;
            color: #CC0066;
            background-color: #FFFFFF;
            text-align: center;
        }
        .auto-style28 {
            color: #FFFFFF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;" __designer:mapid="6a5" class="auto-style27">
        <tr __designer:mapid="6a6">
            <td __designer:mapid="6aa" class="auto-style25" style="border: thin solid #CE7171"><strong>MESAJ DETAY</strong></td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style28" colspan="2"><strong>MESAJ GÖNDEREN:&nbsp;</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" colspan="2"><strong>BAŞLIK:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" colspan="2"><strong>MAİL:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" colspan="2"><strong>MESAJ İÇERİK:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#CE7171" BorderColor="White" Font-Bold="True" ForeColor="White" Height="40px" Text="Button" Width="200px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
