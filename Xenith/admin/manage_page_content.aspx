<%@ Page Title="" Language="C#" MasterPageFile="~/admin/XenithAdmin.Master" AutoEventWireup="true" CodeBehind="manage_page_content.aspx.cs" Inherits="Xenith.admin.manage_page_content" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHAdminMainContainer" runat="server">
        <form id="form1" runat="server">
        <div id="AdminMainContent">
            <h1 class="page-title" style="font-size:30px;">Manage Page Content</h1>
<div class="btn-toolbar">
    <button class="btn btn-primary"><i class="icon-plus"></i> Create New</button>
  <div class="btn-group">
  </div>
</div>
<div class="well">
    
        

        <asp:ListView ID="ListView1" runat="server" DataSourceID="XenithDataSource">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="page_idLabel" runat="server" Text='<%# Eval("page_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="page_nameLabel" runat="server" Text='<%# Eval("page_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="page_contentLabel" runat="server" 
                            Text='<%# Eval("page_content") %>' />
                    </td>
                    <td>
                        <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                    </td>
                    <td>
                        <a href="user.html"><i class="icon-pencil"></i></a>
                        <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                            Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="page_idLabel1" runat="server" Text='<%# Eval("page_id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="page_nameTextBox" runat="server" 
                            Text='<%# Bind("page_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="page_contentTextBox" runat="server" 
                            Text='<%# Bind("page_content") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                    </td>
                    <td>
                        <a href="user.html"><i class="icon-pencil"></i></a>
                        <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>
                            No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                            Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Clear" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="page_nameTextBox" runat="server" 
                            Text='<%# Bind("page_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="page_contentTextBox" runat="server" 
                            Text='<%# Bind("page_content") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                    </td>
                    <td>
                        <a href="user.html"><i class="icon-pencil"></i></a>
                        <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="page_idLabel" runat="server" Text='<%# Eval("page_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="page_nameLabel" runat="server" Text='<%# Eval("page_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="page_contentLabel" runat="server" 
                            Text='<%# Eval("page_content") %>' />
                    </td>
                    <td>
                        <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                    </td>
                    <td>
                        <a href="user.html"><i class="icon-pencil"></i></a>
                        <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">
                                        page_id</th>
                                    <th runat="server">
                                        page_name</th>
                                    <th runat="server">
                                        page_content</th>
                                    <th runat="server">
                                        status</th>
                                </tr>
                                <tr ID="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                        ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                        ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="page_idLabel" runat="server" Text='<%# Eval("page_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="page_nameLabel" runat="server" Text='<%# Eval("page_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="page_contentLabel" runat="server" 
                            Text='<%# Eval("page_content") %>' />
                    </td>
                    <td>
                        <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                    </td>
                    <td>
                        <a href="user.html"><i class="icon-pencil"></i></a>
                        <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="XenithDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:XenithConnectionString %>" 
            SelectCommand="SELECT * FROM [page]"></asp:SqlDataSource>
        <br />
</div>
<div class="pagination">
    <ul>
        <li><a href="#">Prev</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">Next</a></li>
    </ul>
</div>

<div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Delete Confirmation</h3>
    </div>
    <div class="modal-body">
        <p class="error-text"><i class="icon-warning-sign modal-icon"></i>Are you sure you want to delete the user?</p>
    </div>
    <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
        <button class="btn btn-danger" data-dismiss="modal">Delete</button>
    </div>
</div>

        </div>

        </form>

</asp:Content>
