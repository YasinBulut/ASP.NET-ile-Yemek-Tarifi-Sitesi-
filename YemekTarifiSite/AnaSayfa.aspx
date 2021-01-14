<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="YemekTarifiSite.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            font-size: 14pt;
            color: #FFFFFF;
        }
        .auto-style11 {
        font-size: 18pt;
        color: #CC0066;
    }
    .auto-style12 {
        color: #000000;
    }
    .auto-style13 {
        background-color: #FFFFFF;
    }
    .auto-style15 {
        width: 100%;
    }
        .auto-style17 {
            text-decoration: underline;
            font-size: 16pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="549px">
            <ItemTemplate>
                <table class="auto-style15">
                    <tr>
                        <td class="auto-style13"><strong>


                          <a href="YemekDetay.aspx?YEMEKID=<%# Eval("YEMEKID") %>"> <asp:Label ID="Label3" runat="server" CssClass="auto-style11" Text='<%# Eval("YEMEKAD") %>'></asp:Label></a> 
                            

                        </strong></td>
                    </tr>
                    <tr>
                        <td><span class="auto-style17"><strong>MALZEMELER: </strong></span>
                            <br />
                            <strong>
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style12" Text='<%# Eval("YEMEKMALZEME") %>'></asp:Label>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td><strong><span class="auto-style17">YEMEK TARİF: </span> </strong>
                            <br />
                            <strong>
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style12" Text='<%# Eval("YEMEKTARIF") %>'></asp:Label>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><strong>TARİH:&nbsp;
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style12" Text='<%# Eval("YEMEKTARIH") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td><strong>PUAN:&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" CssClass="auto-style12" Text='<%# Eval("YEMEKPUAN") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td><strong>KATEGORİ:
                            <asp:Label ID="Label8" runat="server" CssClass="auto-style12" Text='<%# Eval("KATEGORIID") %>'></asp:Label>
                            </strong></td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
</asp:Content>
