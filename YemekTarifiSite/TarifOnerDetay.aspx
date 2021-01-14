<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifiSite.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>TARİF AD:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>&nbsp;MALZEMELER</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>YAPILIŞ:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>RESİM:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>ÖNEREN:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>ÖNEREN MAİL:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="tb5" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>KATEGORİ:&nbsp;</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#CE7171" BorderColor="White" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" Text="ONAYLA" Width="200px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
