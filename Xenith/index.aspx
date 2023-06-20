<%@ Page Title="" Language="C#" MasterPageFile="~/Xenith.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Xenith.index" %>
<asp:Content ID="CPHIDMainContainer" ContentPlaceHolderId="CPHMainContainer" runat="server">
<div id="maincontent1" class="maincontent1"><span>Local News</span>
<hr class="hrline"/>
<%=localNewsContent%>
<div style="clear:both"></div>
<div style="float:right">
<em>Powered by ABC News</em>
</div>
<div style="clear:both"></div>
</div>
<div id="maincontent2" class="maincontent2">
<div class="img-polaroid adspace2">
<a href="#"><img src="uploads/ads/ad2.png" width="728" height="90" /></a>
</div>
</div>
<div id="maincontent3" class="maincontent3"><span>World News</span>
<hr class="hrline"/>
<%=worldNewsContent%>
<div style="clear:both"></div>
<div style="float:right">
<em>Powered by BBC News</em>
</div>
<div style="clear:both"></div>
</div>
</asp:Content>