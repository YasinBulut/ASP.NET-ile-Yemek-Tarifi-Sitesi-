<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GününYemegiAdmin.aspx.cs" Inherits="YemekTarifiSite.GününYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style26 {
            background-color: #FFFFFF;
            font-size: 20pt;
            color: #CC0066;
        text-align: center;
    }
        .auto-style27 {
            background-color: #FFFFFF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;" class="auto-style27">
        <tr>
            <td class="auto-style26" style="border: thin solid #CE7171"><strong>YEMEK LİSTESİ</strong></td>
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" Width="548px">
            <ItemTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style20">
                            <strong>
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style18" Text='<%# Eval("YEMEKAD") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style14">
                            <a href="YemekDüzenle.aspx?YEMEKID=<%# Eval ("YEMEKID")%>">
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/Resimler/chose.png" Width="60px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Content>
