
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true"
    CodeBehind="feedback.aspx.cs" Inherits="Project.WebForm1" %>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="textarea">
   <form action="Feedback.aspx">
    <asp:TextBox ID="TextBox1" runat="server" Height="211px"  Columns="50" Rows="10"
        style="margin-left: 108px; margin-top: 55px" Width="590px" 
        TextMode="MultiLine"></asp:TextBox>
&nbsp;</form>
      
      <br />
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <em><strong>&nbsp;Provide a Feedback in less than 100 words. All submitted 
      Feedbacks will be read and valued by our management.</strong></em><br />
      <br />
      
      <asp:Button ID="Button1" runat="server" Text="Submit Feedback" Width="219px" 
          style="margin-left: 269px; margin-top: 29px;" Height="45px" 
          onclick="Button1_Click" />
    </div>  
    <script language="javascript" type="text/javascript">


    </script>
</asp:Content>