<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forum1.aspx.cs" Inherits="Project.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: "Courier New", Courier, monospace;
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server" style="background-color:Maroon">
    <div>
    
  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong style="font-size: xx-large">&nbsp;<span class="style1">FORUM</span></strong><br />
       
         
           

        
       <asp:GridView ID="GridView1" runat="server" 
AutoGenerateColumns="False" Height="263px" 
            style="margin-left: 129px; margin-top: 43px" Width="683px" CellPadding="3" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellSpacing="2"  OnPageIndexChanging="myGridView_PageIndexChanging"  
            >

           <Columns>
               <asp:BoundField DataField="forum_topic" HeaderText="forum_topic" 
                   SortExpression="forum_topic" />
               <asp:BoundField DataField="no_of_comments" HeaderText="no_of_comments" 
                   SortExpression="no_of_comments" />
           </Columns>

           <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
           <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
           <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
           <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
           <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#FFF1D4" />
           <SortedAscendingHeaderStyle BackColor="#B95C30" />
           <SortedDescendingCellStyle BackColor="#F1E5CE" />
           <SortedDescendingHeaderStyle BackColor="#93451F" />

</asp:GridView>
        
        <asp:SqlDataSource ID="DataBase1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT [no_of_comments], [forum_topic] FROM [forum_posts]">
        </asp:SqlDataSource>
        
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="margin-left: 608px; margin-top: 79px;" Text="Post New Topic" 
            Width="127px" Height="39px" />
            

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
   
</body>
</html>
