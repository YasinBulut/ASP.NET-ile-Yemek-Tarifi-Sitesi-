<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifiSite.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style27 {
            background-color: #FFFFFF;
        }
                

        .auto-style25 {
            font-size: 16pt;
            color: #CC0066;
            background-color: #FFFFFF;
            text-align: center;
        }
        .auto-style28 {
            width: 44px;
        }
        .auto-style29 {
            width: 150px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;" __designer:mapid="6a5" class="auto-style27">
        <tr __designer:mapid="6a6">
            <td class="auto-style29" style="border: thin solid #CE7171;">&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
            </td>
            <td __designer:mapid="6aa" class="auto-style25" style="border: thin solid #CE7171"><strong>ONAYSIZ TARİF LİSTESİ</strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="548px">
            <ItemTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style28"><strong>
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style18" Text='<%# Eval("TARIFAD") %>' style="color: #FFFFFF"></asp:Label>
                            </strong></td>
                        <td class="auto-style14"><a href='TarifOnerDetay.aspx?TARIFID=<%# Eval ("TARIFID")%>'>
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/Resimler/PROPOSAL.png" Width="60px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
     <table style="width: 100%;" __designer:mapid="6a5" class="auto-style27">
        <tr __designer:mapid="6a6">
            <td class="auto-style29" style="border: thin solid #CE7171;">&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Font-Bold="True" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
            </td>
            <td __designer:mapid="6aa" class="auto-style25" style="border: thin solid #CE7171"><strong>ONAYLI TARİF LİSTESİ</strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="548px">
            <ItemTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style28"><strong>
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style18" Text='<%# Eval("TARIFAD") %>' style="color: #FFFFFF"></asp:Label>
                            </strong></td>
                        <td class="auto-style14"><a href='TarifOnerDetay.aspx?TARIFID=<%# Eval ("TARIFID")%>'>
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/Resimler/PROPOSAL.png" Width="60px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    </asp:Content>
