<%@ Page Title="" Language="C#" MasterPageFile="~/Xenith.Master" AutoEventWireup="true" CodeBehind="forum.aspx.cs" Inherits="Xenith.forum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHMainContainer" runat="server">
    <div id="maincontent1" class="maincontent1"><span>Forum</span>
<hr class="hrline"/>
   <form id="form1" runat="server">
    <div>
       <asp:GridView ID="GridView1" runat="server" 
AutoGenerateColumns="False" Height="263px" 
            style="margin-left: 20px; margin-top: 20px" Width="500px" CellPadding="3" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellSpacing="2"  OnPageIndexChanging="myGridView_PageIndexChanging"  
            >

           <Columns>
               <asp:BoundField DataField="forum_topic" HeaderText="Forum Topic" 
                   SortExpression="forum_topic" />
               <asp:BoundField DataField="no_of_comments" HeaderText="No of Comments" 
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
            ConnectionString="<%$ ConnectionStrings:XenithConnectionString %>" 
            
            SelectCommand="SELECT [no_of_comments], [forum_topic] FROM [forum_posts]">
        </asp:SqlDataSource>
        
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="margin-left: 200px; margin-top: 30px;" Text="Post New Topic" 
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
</div>
</asp:Content>
