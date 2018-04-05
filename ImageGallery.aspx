<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMasterStyle.master" AutoEventWireup="true" CodeFile="ImageGallery.aspx.cs" Inherits="ImageGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <title>Image Gallery</title>
     <script>
        function NextPrev()
        {
            var dv1 = document.getElementById("box");
            var dv2 = document.getElementById("box1");
            var lnk = document.getElementById("lnkNP");
            var a = dv1.style.display;
            var b = dv2.style.display;
            if (a == "block" && b == "none") {
                dv1.style.display = "none";
                dv2.style.display = "block";
                lnk.style.background = "skyblue";
                lnk.style.color = "Blue";
                lnk.innerHTML = "Previous";
            }
            else {
                dv1.style.display = "block";
                dv2.style.display = "none";
                lnk.style.background = "yellow";
                lnk.style.color = "blue";
                lnk.innerHTML = "Next";
            }
        }
    </script>
    <style>
        #box {
        height:450px;
        width:1000px;
        background:-webkit-linear-gradient(white,skyblue);
        border-radius:20px;
        box-shadow:3px 3px 30px black inset;
        }
         #box1 {
        height:450px;
        width:1000px;
        display:none;
        background:-webkit-linear-gradient(white,yellow);
        border-radius:20px;
        box-shadow:3px 3px 30px black inset;
        }
          .row {
        height:200px;
        width:1000px;
        }
        .col {
        height:150px;
        width:273px;
        float:left;
        padding:5px;
        background:rgba(0,255,255,0.79);
        border:5px double navy;
        border-radius:10px 0px 10px 0px;
        margin:15px;
        box-shadow:3px 3px 30px black inset;
        -webkit-transition:background 2s,border 2s,border-radius 2s;
        }
            .col:hover {
            background:#d7ed68;
            border-radius:20px;
            border:5px dotted #10866d;
            -webkit-transition:background 2s,border 2s,border-radius 2s;
            }
        .imgG {
        height:148px;
        width:271px;
        border-radius:20px;
        border:1px solid blue;
        }
       
        #lnkNP {
        height:30px;
        width:80px;
        padding:5px;
        border-radius:10px;
        background:yellow;
        color:blue;
        position:relative;
        left:850px;
        font-weight:bold;
        text-decoration:none; 
        bottom:50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="box">
        <div class="row">
            <div class="col"><img src="images/ImageGallery/1.jpg" class="imgG"/></div>
            <div class="col"><img src="images/ImageGallery/2.jpg" class="imgG" /></div>
            <div class="col"><img src="images/ImageGallery/3.jpg" class="imgG" /></div>
        </div>
        <div class="row">
            <div class="col"><img src="images/ImageGallery/4.JPG" class="imgG" /></div>
            <div class="col"><img src="images/ImageGallery/5.jpg"class="imgG" /></div>
            <div class="col"><img src="images/ImageGallery/6.jpg" class="imgG" /></div>
        </div>

    </div>
    <div id="box1">
        <div class="row">
            <div class="col"><img src="images/ImageGallery/7.jpg" class="imgG" /></div>
            <div class="col"><img src="images/ImageGallery/8.jpg" class="imgG" /></div>
            <div class="col"><img src="images/ImageGallery/9.jpg" class="imgG" /></div>
        </div>
        <div class="row">
            <div class="col"><img src="images/ImageGallery/6.jpg" class="imgG" /></div>
            <div class="col"><img src="images/ImageGallery/10.jpg" class="imgG" /></div>
            <div class="col"><img src="images/ImageGallery/5.jpg" class="imgG" /></div>
        </div>
    </div>
    <a href="#box" id="lnkNP" onclick="NextPrev()">Next</a>
</asp:Content>

