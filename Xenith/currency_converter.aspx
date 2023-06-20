<%@ Page Title="" Language="C#" MasterPageFile="~/Xenith.Master" AutoEventWireup="true" CodeBehind="currency_converter.aspx.cs" Inherits="Xenith.currency_converter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHMainContainer" runat="server">
<div id="maincontent1" class="maincontent1"><span>Currency Converter</span>
<hr class="hrline"/>
<form id="CurrencyConversionForm" runat="server" method="get">
  <div>
    <table width="100%" border="0">
      <tr>
        <td width="56"><asp:Label ID="Label1" runat="server" Text="From"></asp:Label> 
        : </td>
        <td width="144"><asp:TextBox ID="CurrencyConversionFromAmt" ClientIDMode="Static" runat="server">1</asp:TextBox></td>
        <td width="96"><asp:DropDownList ID="CurrencyFromDDL" ClientIDMode="Static" runat="server">
          <asp:ListItem Selected="True">USD</asp:ListItem>
          <asp:ListItem>EURO</asp:ListItem>
          <asp:ListItem>GBP</asp:ListItem>
          <asp:ListItem>INR</asp:ListItem>
        </asp:DropDownList></td>
      </tr>
      <tr>
        <td>To : </td>
        <td><asp:TextBox ID="CurrencyConversionToAmt" ClientIDMode="Static" runat="server"></asp:TextBox></td>
        <td><asp:DropDownList ID="CurrencyToDDL" ClientIDMode="Static" runat="server">
          <asp:ListItem>USD</asp:ListItem>
          <asp:ListItem Selected="True">EUR</asp:ListItem>
          <asp:ListItem>GBP</asp:ListItem>
          <asp:ListItem>INR</asp:ListItem>
        </asp:DropDownList></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="3"><div align="center">
          <asp:Button ID="CurrencyConversionSubmit" runat="server" Text="Submit" onclick="CurrencyConversionSubmit_Click" CssClass="btn" />
        </div></td>
      </tr>
    </table>
  </div>
</form>
</div>
</asp:Content>
