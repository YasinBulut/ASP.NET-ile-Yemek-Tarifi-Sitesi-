<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifiSite.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            text-align: right;
        }

        .auto-style17 {
            background-color: #FFFFFF;
            width: 150px;
        }

        .auto-style18 {
            font-size: 14pt;
        color: #CC0066;
        text-decoration: underline;
        background-color: #FFFFFF;
    }

        .auto-style19 {
            width: 278px;
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

        .auto-style24 {
            margin-left: 40px;
        }
    .auto-style25 {
            text-align: right;
            color: #FFFFFF;
            text-decoration: underline;
        }
        .auto-style26 {
            background-color: #FFFFFF;
            font-size: 20pt;
            color: #CC0066;
        }
        .auto-style27 {
            text-align: center;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="auto-style27">
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style17" style="border: thin solid #CE7171">&nbsp;
                                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                        &nbsp;
                                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" CssClass="auto-style21" OnClick="Button2_Click"  />
                    </td>
                    <td class="auto-style26" style="border: thin solid #CE7171"><strong>YEMEK LİSTESİ</strong></td>
                </tr>
            </table>
        </div>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="548px">
            <ItemTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style20">
                            <strong>
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style18" Text='<%# Eval("YEMEKAD") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style19">
                            <a href="Yemekler.aspx?YEMEKID=<%# Eval ("YEMEKID") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/İconlar/deletee.png" Width="60px" /></a>
                        </td>
                        <td class="auto-style14">
                            <a href="YemekDüzenle.aspx?YEMEKID=<%# Eval ("YEMEKID")%>">
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/İconlar/updatee.png" Width="60px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

        <div class="auto-style27">
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style17" style="border: thin solid #CE7171">&nbsp;&nbsp;
                                        <asp:Button ID="Button3" runat="server" Font-Bold="True" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                        &nbsp;
                                        <asp:Button ID="Button4" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" CssClass="auto-style21" OnClick="Button4_Click" />
                    </td>
                    <td class="auto-style26" style="border: thin solid #CE7171"><strong>YEMEK EKLEME</strong></td>
                </tr>
            </table>
        </div>
    <asp:Panel ID="Panel4" runat="server">
        <table style="width: 100%;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>YEMEK AD:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="350px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>MALZEMELER:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="350px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>YEMEK TARİF:</strong></td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="350px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>KATEGORİ:</strong></td>
                <td class="auto-style24">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="350px" CssClass="tb5">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style24">
                   
                    <asp:Button ID="Button5" runat="server" BackColor="#CE7171" BorderColor="White" Font-Bold="True" ForeColor="White" Height="40px" Text="EKLE" Width="200px" OnClick="Button5_Click" />
                   
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

