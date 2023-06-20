<%@ Page Title="" Language="C#" MasterPageFile="~/Xenith.Master" AutoEventWireup="true" CodeBehind="explore_the_city.aspx.cs" Inherits="Xenith.explore_the_city" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHMainContainer" runat="server">
<div id="maincontent1" class="maincontent1"><span>Explore The City</span>
<hr class="hrline"/>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
    var markers = [
<%=locmarkers%>
];
    window.onload = function () {

        var mapOptions = {
            center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
            zoom: 8,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var infoWindow = new google.maps.InfoWindow();
        var latlngbounds = new google.maps.LatLngBounds();
        var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
        var i = 0;
        var interval = setInterval(function () {
            var data = markers[i]
            var myLatlng = new google.maps.LatLng(data.lat, data.lng);
            var icon = "";
            switch (data.type) {
                case "ATM":
                    icon = "red";
                    break;
                case "Park":
                    icon = "blue";
                    break;
                case "Hospital":
                    icon = "yellow";
                    break;
                case "Mall":
                    icon = "green";
                    break;
            }
            icon = "http://maps.google.com/mapfiles/ms/icons/" + icon + ".png";
            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: data.title,
                animation: google.maps.Animation.DROP,
                icon: new google.maps.MarkerImage(icon)
            });
            (function (marker, data) {
                google.maps.event.addListener(marker, "click", function (e) {
                    infoWindow.setContent(data.description);
                    infoWindow.open(map, marker);
                });
            })(marker, data);
            latlngbounds.extend(marker.position);
            i++;
            if (i == markers.length) {
                clearInterval(interval);
                var bounds = new google.maps.LatLngBounds();
                map.setCenter(latlngbounds.getCenter());
                map.fitBounds(latlngbounds);
            }
        }, 80);
    }
</script>
<table cellpadding="3" cellspacing="2">
<tr>
<td>
<div id="dvMap" style="width: 500px; height: 400px">
</div>
</td>
<td valign="top">
<u>Legend:</u><br />
<img alt="" src="http://maps.google.com/mapfiles/ms/icons/red.png" />
ATM<br />
<img alt="" src="http://maps.google.com/mapfiles/ms/icons/blue.png" />
Park<br />
<img alt="" src="http://maps.google.com/mapfiles/ms/icons/yellow.png" />
Hospital<br />
<img alt="" src="http://maps.google.com/mapfiles/ms/icons/green.png" />
Mall<br />
</td>
</tr>
</table>
</div>
</asp:Content>
