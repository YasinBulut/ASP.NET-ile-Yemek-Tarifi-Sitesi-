<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifiSite.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style21 {
            margin-left: 0px;
        }

        .auto-style18 {
            font-size: 14pt;
        color: #CC0066;
        text-decoration: underline;
        background-color: #FFFFFF;
    }

        .auto-style19 {
            width: 501px;
            text-align: right;
        }

        .auto-style25 {
            font-size: 16pt;
            color: #CC0066;
            background-color: #FFFFFF;
        }
        .auto-style26 {
            background-color: #FFFFFF;
            width: 120px;
        }
        .auto-style27 {
            background-color: #FFFFFF;
        }
        .auto-style28 {
            width: 290px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;" __designer:mapid="6a5" class="auto-style27">
        <tr __designer:mapid="6a6">
            <td __designer:mapid="6a7" class="auto-style26" style="border: thin solid #CE7171">&nbsp;
                                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                        &nbsp;
                                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" CssClass="auto-style21" OnClick="Button2_Click"   />
            </td>
            <td __designer:mapid="6aa" class="auto-style25" style="border: thin solid #CE7171"><strong>ONAYLANAN YORUM LİSTESİ</strong></td>
        </tr>
    </table>
        <asp:Panel ID="Panel1" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="548px">
                <ItemTemplate>
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style28"><strong>
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style18" Text='<%# Eval("YORUMADSOYAD") %>'></asp:Label>
                                </strong></td>
                            <td class="auto-style19"><a href="Yorumlar.aspx?YORUMID=<%# Eval ("YORUMID") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/İconlar/deletee.png" Width="60px" />
                                </a></td>
                            <td class="auto-style14"><a href="YorumDetay.aspx?YORUMID=<%# Eval ("YORUMID")%>">
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/İconlar/updatee.png" Width="60px" />
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
    </asp:Panel>
       <table style="width: 100%;" __designer:mapid="6a5" class="auto-style27">
        <tr __designer:mapid="6a6">
            <td __designer:mapid="6a7" class="auto-style26" style="border: thin solid #CE7171">&nbsp;
                                        <asp:Button ID="Button3" runat="server" Font-Bold="True" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                        &nbsp;
                                        <asp:Button ID="Button4" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" CssClass="auto-style21" OnClick="Button4_Click"    />
            </td>
            <td __designer:mapid="6aa" class="auto-style25" style="border: thin solid #CE7171"><strong>ONAYSIZ YORUM LİSTESİ</strong></td>
        </tr>
    </table>
       <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="548px">
                <ItemTemplate>
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style28"><strong>
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style18" Text='<%# Eval("YORUMADSOYAD") %>'></asp:Label>
                                </strong></td>
                            <td class="auto-style19"><a href="YorumDetay.aspx?YORUMID=<%# Eval ("YORUMID") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/İconlar/deletee.png" Width="60px" />
                                </a></td>
                            <td class="auto-style14"><a href="YorumDetay.aspx?YORUMID=<%# Eval ("YORUMID")%>">
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/İconlar/updatee.png" Width="60px" />
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
    </asp:Panel>
    </asp:Content>
