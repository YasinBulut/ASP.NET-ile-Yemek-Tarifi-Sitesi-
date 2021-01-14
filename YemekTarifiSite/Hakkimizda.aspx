<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifiSite.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            font-size: 20pt;
            text-align: center;
        }
        .auto-style11 {
            color: #CC0066;
            background-color: #FFFFFF;
        }
        .auto-style12 {
            font-size: 18pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="auto-style11" style="width:100%;">
            <tr>
                <td class="auto-style10"><strong>HAKKIMIZDA</strong></td>
            </tr>
        </table>
        <asp:DataList ID="DataList1" runat="server" Width="550px">
            <ItemTemplate>
                <strong>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text='<%# Eval("METIN") %>'></asp:Label>
                </strong>
                <br />
            </ItemTemplate>
        </asp:DataList>
    <asp:Image ID="Image1" runat="server" Height="182px" ImageUrl="~/Resimler/1324855.png" Width="550px" />
</asp:Content>
