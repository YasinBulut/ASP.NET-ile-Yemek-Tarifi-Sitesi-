<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifiSite.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        font-size: 14pt;
        color: #FFFFFF;
        text-align: right;
    }
    .auto-style11 {
        margin-left: 30px;
    }
    .auto-style12 {
        font-size: 20pt;
        color: #FFFFFF;
        text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style13 {
            color: #CC0066;
        }
    .auto-style14 {
            font-size: 14pt;
            color: #FFFFFF;
            text-align: right;
            width: 721px;
            height: 25px;
        }
    .auto-style15 {
            width: 721px;
        }
    .auto-style16 {
        border: 2px solid #456879;
        border-radius: 10px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
    <tr>
        <td class="auto-style12" colspan="2"><strong>&nbsp;&nbsp;&nbsp; <span class="auto-style13">TARİF ÖNER</span></strong></td>
    </tr>
    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>TARİF AD:</strong></td>
        <td>
            <asp:TextBox ID="txttarifad" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>MALZEMELER:</strong></td>
        <td>
            <asp:TextBox ID="txtmalzemeler" runat="server" Height="120px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>YAPILIŞ:</strong></td>
        <td>
            <asp:TextBox ID="txtyapilis" runat="server" Height="200px" TextMode="MultiLine" Width="250px" CssClass="auto-style16"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>RESİM:</strong></td>
        <td>
            <asp:FileUpload ID="furesim" runat="server" Width="250px" CssClass="tb5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>TARİF ÖNEREN</strong></td>
        <td>
            <asp:TextBox ID="txttarifoneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>MAİL:</strong></td>
        <td>
            <asp:TextBox ID="txtmail" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" BackColor="#CE7171" BorderColor="White" BorderStyle="Solid" CssClass="auto-style11" Font-Bold="True" ForeColor="White" Height="50px" Text="TARİF ÖNER" Width="200px" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style15">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    </table>
</asp:Content>
