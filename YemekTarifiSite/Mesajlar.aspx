<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifiSite.Mesajlar" %>
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
            width: 235px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;" __designer:mapid="6a5" class="auto-style27">
        <tr __designer:mapid="6a6">
            <td __designer:mapid="6aa" class="auto-style25" style="border: thin solid #CE7171"><strong>MESAJ LİSTESİ</strong></td>
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" Width="548px">
                <ItemTemplate>
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style28"><strong>
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style18" Text='<%# Eval("MESAJGONDEREN") %>' style="color: #FFFFFF"></asp:Label>
                                </strong></td>
                            <td class="auto-style14">
                                <a href='MesajDetay.aspx?MESAJID=<%# Eval ("MESAJID")%>'>
                               <asp:Image ID="Image3" runat="server" ImageUrl="~/İconlar/readicon.png" Width="60px" />
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
</asp:Content>
