<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="YemekTarifiSite.Admin1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            text-align: right;
        }

        .auto-style15 {
            font-size: 20pt;
            color: #CC0066;
        }

        .auto-style16 {
            text-align: center;
        }

        .auto-style17 {
            background-color: #FFFFFF;
        }

        .auto-style18 {
            font-size: 14pt;
            color: #CC0066;
            text-decoration: underline;
            background-color: #FFFFFF;
        }

        .auto-style19 {
            width: 807px;
            text-align: right;
        }

        .auto-style20 {
            width: 290px;
            text-align: left;
        }

        .auto-style21 {
            margin-left: 0px;
        }

        .auto-style22 {
            text-align: left;
        }

        .auto-style23 {
            text-align: right;
            color: #FFFFFF;
        }

        .auto-style24 {
            margin-left: 40px;
        }
        .auto-style25 {
            text-align: right;
            width: 295px;
            font-size: 16pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style17">
        <div class="auto-style16">
            <table style="width: 100%;">
                <tr>
                    <td style="border: thin solid #CE7171">&nbsp;
                                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                        &nbsp;
                                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" CssClass="auto-style21" OnClick="Button2_Click" />
                    </td>
                    <td style="border: thin solid #CE7171"><span class="auto-style15"><strong>KATEGORİ LİSTESİ</strong></span></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="548px">
            <ItemTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style20">
                            <strong>
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style18" Text='<%# Eval("KATEGORIAD") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style19">
                            <a href="Kategoriler.aspx?KATEGORIID=<%# Eval ("KATEGORIID") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/İconlar/deletee.png" Width="60px" /></a>
                        </td>
                        <td class="auto-style25">
                            <a href="KategoriDüzenle.aspx?KATEGORIID=<%# Eval ("KATEGORIID")%>">
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/İconlar/updatee.png" Width="60px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style17">
        <div class="auto-style16">
            <table style="width: 100%;">
                <tr>
                    <td style="border: thin solid #CE7171">&nbsp;&nbsp;
                                        <asp:Button ID="Button3" runat="server" Font-Bold="True" Height="30px" OnClick="Button3_Click" Text="+" Width="30px" />
                        &nbsp;
                                        <asp:Button ID="Button4" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" CssClass="auto-style21" OnClick="Button4_Click" />
                    </td>
                    <td style="border: thin solid #CE7171"><span class="auto-style15"><strong>KATEGORİ EKLEME</strong></span></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table style="width: 100%;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>KATEGORİ AD:&nbsp;</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>KATEGORİ İKON:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style24">
                    <asp:Button ID="Button5" runat="server" BackColor="#CE7171" BorderColor="White" ForeColor="White" Height="40px" Text="EKLE" Width="200px" OnClick="Button6_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
