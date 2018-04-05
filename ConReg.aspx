﻿<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMasterStyle.master" AutoEventWireup="true" CodeFile="ConReg.aspx.cs" Inherits="ConReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <title>REGISTRATION</title>
     <link href="css/ConRegstyle.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        .auto-style2 {
            width: 234px;
        }
        .auto-style3 {
            width: 195px;
        }
        .auto-style4 {
            width: 130px;
        }
        .auto-style6 {
            height: 37px;
            width: 121px;
        }
        .auto-style8 {
            height: 37px;
            width: 113px;
        }
        .auto-style9 {
            width: 113px;
        }
        .auto-style10 {
            width: 121px;
        }
        .auto-style13 {
            width: 438px;
            height: 312px;
            padding: 20px;
            float: left;
            font-size: 18px;
            color: brown;
            font-family: Verdana;
            font-weight: bold;
            font-style: normal;
        }
        .auto-style14 {
            width: 438px;
            height: 313px;
            padding: 20px;
            float: left;
            font-size: 18px;
            color: brown;
            font-family: Verdana;
            font-weight: bold;
            font-style: normal;
        }
        .auto-style15 {
            width: 121px;
            height: 39px;
        }
        .auto-style16 {
            width: 113px;
            height: 39px;
        }
        .txtres{
            resize:none;
        }
        .auto-style17 {
            width: 247px;
        }
        .auto-style18 {
            width: 247px;
            height: 39px;
        }
        .auto-style20 {
            height: 37px;
            width: 247px;
        }
        .auto-style21 {
            height: 44px;
            width: 121px;
        }
        .auto-style22 {
            height: 44px;
            width: 113px;
        }
        .auto-style23 {
            height: 44px;
            width: 247px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <br /><div id="regbox"><center style="font-size:24px;font-weight:bolder;color:brown"><u>REGISTRATION FORM</u></center>
    <div class="auto-style14">
        <table id="table1">
            <tr>
                <td class="auto-style4">Connection Type:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlcontype" runat="server" Height="34px" Width="160px">
                        <asp:ListItem Value="">--Select Connection Type--</asp:ListItem>
                        <asp:ListItem Value="CNG Connection">CNG Connection</asp:ListItem>
                        <asp:ListItem Value="PNG Connection">PNG Connection</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlcontype" ErrorMessage="Choose type.." Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"> Name:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtname" runat="server" Height="20px" Width="160px" ></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="Enter Name.." Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Gender:</td>
                <td class="auto-style3"> <asp:RadioButton ID="rdbmale" runat="server" Text="Male" GroupName="Gender"/>
    &nbsp;<asp:RadioButton ID="rdbfemale" runat="server" Text="Female" GroupName="Gender"></asp:RadioButton></td>
                <td class="auto-style2"> &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Email Id:</td>
                <td class="auto-style3"><asp:TextBox ID="txtEmail" runat="server"  Height="20px" Width="160px" TextMode="Email"></asp:TextBox></td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Email.." Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Postal Address:</td>
                <td class="auto-style3"><asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="170px" Height="35px" CssClass="txtres"></asp:TextBox></td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaddress" ErrorMessage="Enter Address" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Security question:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlsecurequest" runat="server" Height="34px" Width="160px">
                        <asp:ListItem>--Select any question--</asp:ListItem>
                       <asp:ListItem>Your Mother Name</asp:ListItem>
                       <asp:ListItem>Your Pet Name</asp:ListItem>
                       <asp:ListItem>Your favourite Book</asp:ListItem>
                       <asp:ListItem>Your Favourite Movie</asp:ListItem>
                       <asp:ListItem>What is name of your girlfriend ?</asp:ListItem>
                       <asp:ListItem>What was your favourite sports in schooltime ?</asp:ListItem>
                       <asp:ListItem>Name of company where you get your first job ?</asp:ListItem>
                       <asp:ListItem>Name of your Best Friend ?</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlsecurequest" ErrorMessage="Choose one.." Font-Size="Small" ForeColor="Red" InitialValue="--Select any question--"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Security Answer:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtAnswer" runat="server" Height="20px" Width="160px" ></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtEmail" ErrorMessage="Type answer.." Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        </div>
        <div class="auto-style13">

            <table id="table2">
                <tr>
                <td class="auto-style4">Mobile No:</td>
                <td class="auto-style3"><asp:TextBox ID="txtMoNo" runat="server"  Height="20px" Width="160px"></asp:TextBox></td>
                <td class="auto-style17">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMoNo" ErrorMessage="Enter Phone Number" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                    <td class="auto-style15">Profile-Pic:</td>
                    <td class="auto-style16"><asp:FileUpload ID="FuPicture" runat="server" Height="22px" Width="171px" /></td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="FuPicture" ErrorMessage="Select picture" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Password:</td>
                    <td class="auto-style22"><asp:TextBox ID="txtpass" runat="server" Height="20px" Width="140px" TextMode="Password"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter Password" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    <td class="auto-style23">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtconpass" ControlToValidate="txtpass" ErrorMessage="Password not match" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Confirm Password:</td>
                    <td class="auto-style8"><asp:TextBox ID="txtconpass" runat="server" Height="20px" Width="140px" TextMode="Password"></asp:TextBox></td>
                    <td class="auto-style20">
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtpass" ControlToValidate="txtconpass" ErrorMessage="Password not match" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Captcha:</td>
                    <td class="auto-style8">
                        &nbsp;<asp:Label ID="Lblcaptcha" runat="server" Text="Label"></asp:Label>
                   &nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/images/refresh.png" OnClick="ImageButton1_Click" ToolTip="Refresh Captcha" Width="30px" />
                    </td>
                    <td class="auto-style20">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Retype Code:</td>
                    <td class="auto-style9"><asp:TextBox ID="txtcaptcha" runat="server" Height="20px" Width="141px"></asp:TextBox></td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcaptcha" ErrorMessage="Enter Captcha" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr >
                    <td colspan="2"><asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="navy" ForeColor="White" Font-Size="Large" style="margin-left:150px" Height="30px" Width="120px" OnClick="btnSubmit_Click"/></td>
                    <td class="auto-style17">&nbsp;</td>
                        </tr>
            </table>
        </div>
        </div>
</asp:Content>

