<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkımızdaAdmin.aspx.cs" Inherits="YemekTarifiSite.Hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 900px;
            height: 25px;
            font-size: 20pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11" style="width:100%;">
        <tr>
            <td class="auto-style15"><strong>HAKKIMIZDA</strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" Width="540px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#CE7171" BorderColor="White" BorderStyle="Solid" Font-Bold="True" ForeColor="White" Height="40px" Text="GÜNCELLE" Width="546px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
