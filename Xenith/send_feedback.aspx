<%@ Page Title="" Language="C#" MasterPageFile="~/Xenith.Master" AutoEventWireup="true" CodeBehind="send_feedback.aspx.cs" Inherits="Xenith.send_feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHMainContainer" runat="server">
<div id="maincontent1" class="maincontent1"><span>Send Us A Feedback</span>
<hr class="hrline"/>
<form runat="server">
    <asp:TextBox ID="TextBox1" runat="server" Height="211px"  Columns="50" Rows="10"
        style="margin-left:10px; margin-top:20px" Width="500px" 
        TextMode="MultiLine"></asp:TextBox>
&nbsp;
      
      <br />
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <em><strong>&nbsp;Provide a Feedback in less than 100 words. All submitted 
      Feedbacks will be read and valued by our management.</strong></em><br />
      <br />
      
      <asp:Button ID="Button1" runat="server" Text="Submit Feedback" Width="219px" 
          style="margin-left: 150px; margin-top: 29px;" Height="45px" 
          onclick="Button1_Click" />
</form>
</div>
</asp:Content>
