<%@ Page Title="" Language="C#" MasterPageFile="~/FinalUser.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ASE_Project.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                    
<style type="text/css">
#Submit #Submit1
        {
    -moz-border-radius: 20px;
    -webkit-border-radius: 20px;
    -khtml-border-radius: 20px;
    border-radius: 20px;        
    border: solid #FF0000; 
            background-color: #C0C0C0; 
            font-family: verdana; 
            font-size: 10pt; 
            font-weight: bold;
            border-top-left-radius: 40px 30px;
            border-bottom-right-radius: 30% 25%;
            border-top-right-radius: 40px;
            border-radius: 40px;
        }
#registration_user {
            position: absolute;
            top: 93px;
            z-index: 9999;
            left: -50px;
            width: 1080px;
            margin:14px 50px;
            background-color:black;
            border:1px solid black;
            opacity:0.7;
            filter:alpha(opacity=70);
        }
   .label{
        float : left;
   display : inline;
   display : block;
   text-align: left;
   color:white;
}
   .textbox{
	font-family: 'Open Sans', sans-serif;
	margin-top: 5px;
	display: block;
	width: 30%;
	background: rgba(255, 255, 255, 1);
       position:absolute;
       left:150px;
	outline: none;
	color: black;
	font-size: 1em;
	border: groove
	-webkit-appearance: none;
    border-style:solid;
    border-width: 3px;
    border-color: grey;
} 
   #registration_user .hello{
	margin-top: 10px;
	font-family: 'Open Sans', sans-serif;
	cursor: pointer;
	background: brown;
	border: 1px solid #242424;
	padding: 2px 24px;
	outline: none;
	color: #ffffff;
	font-size: 1em;
	text-transform: uppercase;
	-webkit-appearance: none;
	-webkit-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
	border-radius: 2px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	-o-border-radius: 2px;
}
#registration_user .hello:hover {
	background: #f53300;
	border: 1px solid #f53300;
}
.footer {
    height: 60px;
}
    </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="registration_user">
    <asp:Panel id="pan1" runat="server" Height="389px" ScrollBars="Auto" >
       <h2 class="style" >Login</h2> 
				
                
    <asp:Label ID="Label3" runat="server" cssclass="label" Text="Login" Visible="False" ></asp:Label>
    <br />
    <br />
				<asp:Label ID="label1" runat="server" cssclass="label" Text="Name" AssociatedControlID="Name" />
<asp:TextBox id="name" cssclass="textbox" runat="server" />
<br /><br />
<asp:Label ID="label2" runat="server" cssclass="label" Text="Password  " AssociatedControlID="Password" />
<asp:TextBox id="password" cssclass="textbox" TextMode="password" runat="server" />
<br />
        <br />
  <asp:Button ID="Submit" runat="server" cssclass="hello" onclick="user_click" Text="Login as User" />
<asp:Button ID="Submit1" runat="server" cssclass="hello" onclick="vendor_click" Text="Login as Vendor"  />
<br /><br />
        </asp:Panel>
    </div>
</asp:Content>
