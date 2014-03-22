﻿<%@ Page Title="" Language="C#" MasterPageFile="~/FinalUser.Master" AutoEventWireup="true" CodeBehind="vendorDisplayV.aspx.cs" Inherits="ASE_Project.vendorDisplayV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
    .searchbox {
            position: absolute;
            top: 93px;
            z-index: 9999;
            left: -50px;
            height: 389px;
            width: 1080px;
            margin:14px 50px;
            background-color:black;
            border:1px solid black;
            opacity:0.7;
            filter:alpha(opacity=70);
        }
    
    .menu_cat {
        width: 60px;
        height: 60px;
    }
    .menu_description
{
	margin-top: 5px;
	font-size: 11px;
    
    color:azure;
}
    
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   
        <div class="searchbox">
   <asp:Panel id="pan2" runat="server" ScrollBars="Auto" Height="389px" > 
           <asp:Label ID="v1" runat="server" Text="Label" Visible="False"></asp:Label>
           <br />
    
           <h2 class="style">Venue Vendors</h2>
    
           <asp:Repeater ID="venven" runat="server">
            <HeaderTemplate><br /><br />
            
            </HeaderTemplate>
            
            <ItemTemplate>
                <div style="width:100%; min-height: 110px;">
            
    					
    		<div style="float:left;width:300px; ">
    			<h5 class="cufon" ><a href="venue_profile.aspx?vendor_name=<%#DataBinder.Eval(Container.DataItem, "vendor_name")%>"><%#  DataBinder.Eval(Container.DataItem, "vendor_name")%></a></h5>
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			    				<img src="http://themes.themegoods.com/pluto_wp/wp-content/themes/Pluto/images/icon_star.png" style="float:left;margin-right:2px" alt="">
    			<br class="clear">
    			<div class="menu_description">
                <div class="meta-left">
	    		<%# DataBinder.Eval(Container.DataItem, "street")%>	,  <%# DataBinder.Eval(Container.DataItem, "city")%><br />
               <label>Contact:</label> <%# DataBinder.Eval(Container.DataItem, "contact_no")%>
               </div>
               <div class="meta-right">
               Category:   <%# DataBinder.Eval(Container.DataItem, "vendor_service")%>	<br />
               Delivery Timings:    <%# DataBinder.Eval(Container.DataItem, "officetimings")%>	
               
               </div>
                    
        </div>           
            		</div>
    	
 </div>
    

<br class="clear">
 <br>
 
 
           
            </ItemTemplate>

            

            <FooterTemplate>
           
            </FooterTemplate>

        </asp:Repeater>
      
</asp:Panel>        
    </div>
    

</asp:Content>
