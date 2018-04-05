﻿<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMasterStyle.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Home</title>
    <link href="css/GenralMasterStyle.css" rel="stylesheet" type="text/css" />
    <link href="css/default.css" rel="stylesheet" type="text/css" />
    <link href="css/defaultstyle.css" rel="stylesheet" type="text/css" />
    <script>
        function enquiryPopup()
        {
            var para = document.getElementById("PEnquiry");
            var lnk = document.getElementById("LnkEnquiry");
            var status = para.style.display;
            if (status != "block")
            {
                para.style.display = "block";
                lnk.style.background = "blue";
                lnk.text = "-"

            }
            else
            {
                para.style.display = "none";
                lnk.style.background = "brown";
                lnk.text = "+"
            }
      }
         </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHmain" Runat="Server">
    <div id="box">
    <div id="lmain">
         <marquee direction="up" onmouseover="stop()" onmouseout="start()" behavior="up" scolldelay="200" style="height: 404px; width: 180px"><br />
      <asp:GridView ID="g1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None">
          <Columns>
             <asp:TemplateField>
                 <ItemTemplate>
                 <%#Eval("msg") %>
                 <br />
                 <asp:Label ID="LblDate" runat="server" Text='<%#Eval("ndt") %>' forecolor="red"></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
          </Columns>

      </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString8 %>" ProviderName="<%$ ConnectionStrings:ConnectionString8.ProviderName %>" SelectCommand="SELECT [msg], [ndt] FROM [notification]"></asp:SqlDataSource></marquee>
          </div>
    <div id="rmain" style=" font-weight:100; font-size: 18px; font-style: italic;font-size:15px;">
     <center><span style="font-size:x-large;font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;font-weight:bold;text-decoration:underline;">Introduction</span></center><br />
        Green Gas Limited(GGL) is a joint venture of GAIL and Indian Oil Corporation Limited[IOCL]. It has been incorporated for 
        implementation of city gas. Project for supply of Piped Natural Gas(PNG) to domestic, commercial and industrial Consumers.<br />
        There are large number of commercial/domestic/industrial CNG gas suppliers offering a suite of commercial /domestic/industrial 
        services tailored to the national and local needs of the customers. These marketplaces have thousands of commercial/domestic/industrial branches for sales 
        of CNG gas.Their purpose it to attract customers and give them better way of booking and delievery.
         Currently, GGL is authorised by the Central Government to lay, build, operate or expand City Gas Distribution Projects in Lucknow and Agra.
        GGL will leave no stone unturned in creating the necessary facilities to cater the City Gas demand of transport, domestic, industrial and commercial customers in its 
        area of operation.
       <br /><br /> GGL is committed, aware and fully focused towards Health, Safety and Environment(HSE). In this endeavour we have in place systems and processes that match up with the best in
        the world.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
         </div>
        </div>
    <a href="#" id="LnkEnquiry" onclick="enquiryPopup()"> + </a><br />
    <p id="PEnquiry">
        <span style="font-size:25px;color:black;font-style:oblique;padding:40px 20px;text-decoration:underline;">Enquiry Form</span><br /><br />
        <asp:TextBox ID="txtname" runat="server" Placeholder="Name..." ></asp:TextBox><br/>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter your name" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>

        <br /><br />
         <asp:TextBox ID="txtMoNo" runat="server" Placeholder="Mobile No..." TextMode="SingleLine"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMoNo" ErrorMessage="Enter your Mobile Number" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />

         <asp:TextBox ID="txtEmail" runat="server" Placeholder="Email Id..." TextMode="SingleLine" ></asp:TextBox><br/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter your EmailID" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator><br />
 
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter valid Email ID" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
         <asp:TextBox ID="txtmsg" runat="server" Placeholder="Message..." Textmode="MultiLine" ></asp:TextBox><br/>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmsg" ErrorMessage="Enter your message" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />


        <asp:Button ID="btnSaveEnquiry" runat="server" Text="Submit" BackColor="Navy" ForeColor="White" Font-Size="Large" OnClick="btnSaveEnquiry_Click"/><br /><br />
    </p>
</asp:Content>

