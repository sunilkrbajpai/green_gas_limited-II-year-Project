<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMasterStyle.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="Enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>contact us</title>
    <link href="css/enquirystyle.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <br /><div id="box">
    <div id="Address">
        <center><h2>Head Office</h2></center>
        GREEN GAS LIMITED FORTUNA TOWERS, 2nd FLOOR, 10, RANA PRATAP MARG,<br /> Lucknow-226001. <br />Telephone: 0522 – 4088530
    </div>
    <div id="map">
       <h2><center>Google Map</center></h2>
        <iframe width="370px" height="170px" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d56952.73417708458!2d80.9533630436726!3d26.85439235296032!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399be2b8c2614365%3A0x55cca8504c90f9e9!2sGreen+Gas+Limited!5e0!3m2!1sen!2sin!4v1497677621516"></iframe>
    </div>
        </div>
</asp:Content>

