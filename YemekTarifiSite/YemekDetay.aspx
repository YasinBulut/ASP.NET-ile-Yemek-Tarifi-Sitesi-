<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifiSite.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            font-size: 25pt;
            color: #FFFFFF;
        }
        .auto-style13 {
            font-size: 10pt;
        }
        .auto-style15 {
            background-color: #FFFFFF;
            font-size: 18pt;
            color: #CC0066;
            text-align: center;
        }
        .auto-style16 {
            text-align: right;
            font-size: 12pt;
            color: #FFFFFF;
        }
        .auto-style17 {
            height: 26px;
        }
        .auto-style18 {
            font-size: 18pt;
            text-decoration: underline;
        }
        .auto-style19 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style11" Text="Label"></asp:Label>
    <asp:DataList ID="DataList2" runat="server" Width="550px">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style18" Text='<%# Eval("YORUMADSOYAD") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style3" Text='<%# Eval("YORUMICERIK") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style13" Text='<%# Eval("YORUMTARIH") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </strong>
    <div class="auto-style15"><strong>YORUM YAPMA PANELİ</strong></div>
    <asp:Panel ID="Panel1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>AD SOYAD:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>MAİL:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>YORUM:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#CE7171" BorderColor="White" BorderStyle="Solid" ForeColor="White" OnClick="Button1_Click" Text="YORUM YAP" Width="200px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
