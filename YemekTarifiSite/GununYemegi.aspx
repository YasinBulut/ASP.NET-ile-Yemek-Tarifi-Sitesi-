<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifiSite.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            color: #FFFFFF;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            color: #000000;
            font-size: 16pt;
            text-decoration: underline;
        }
        .auto-style15 {
            font-size: 20pt;
            color: #CC0066;
        }
        .auto-style16 {
            color: #FFFFFF;
            background-color: #FFFFFF;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="546px">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style16"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style15" Text='<%# Eval("YEMEKAD") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td>
                        <strong><span class="auto-style13">MALZEMELER:</span>
                        <br />
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Font-Italic="False" Text='<%# Eval("YEMEKMALZEME") %>'></asp:Label>
                        <br />
                        &nbsp;</strong></td>
                </tr>
                <tr>
                    <td>
                        <strong><span><span class="auto-style13">TARİF: </span>
                        </span>
                        <span class="auto-style11">
                        <br />
                        </span>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style3" Font-Italic="False" Text='<%# Eval("YEMEKTARIF") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Image ID="Image1" runat="server" Height="190px" Width="360px" ImageUrl='<%# Eval("YEMEKRESIM") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <strong><span class="auto-style11">PUAN: </span>&nbsp;
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style3" Font-Italic="False" Text='<%# Eval("YEMEKPUAN") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong><span class="auto-style11">TARİH:</span>&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style3" Font-Italic="False" Text='<%# Eval("YEMEKTARIH") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;<br /></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
