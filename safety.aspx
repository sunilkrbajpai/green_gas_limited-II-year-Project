<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMasterStyle.master" AutoEventWireup="true" CodeFile="safety.aspx.cs" Inherits="safety" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Safety</title>
    <style>
        #tbl{
            width:95%;
            height:360px;
        background:#eaf283;
            padding:15px;

        }
        #tbl td{
            width:49%;
        }
        .auto-style1 {
            height: 46px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
<center>   <br /> <table id="tbl">
        <tr style="font-size:30px;font-family:Algerian;">
            <td class="auto-style1" style="color:green;">
               <center> DO's</center>
            </td>
            <td class="auto-style1" style="color:red;">
               <center> DON'Ts</center>
            </td>
        </tr>
        <tr style="font-weight:bold;color:#5510ad">
            <td>
                1.
                Turn off machinery and eliminate all sources of ignition.
                </td>
            <td>
                1.
                Turn electrical switches on or off.
            </td>
        </tr>
        <tr style="font-weight:bold;color:#5510ad">
            <td>
                2.
                Shut off vehicle engines.
                </td>
            <td>
                2. Operate any machinery, including vehicles.
            </td>
        </tr>
        <tr style="font-weight:bold;color:#5510ad">
            <td>
                3.
                Evacuate the area, including buildings. 
                </td>
            <td>
                3. Attempt to make temporary repairs or operate any underground gas valves.
            </td>
        </tr>
        <tr style="font-weight:bold;color:#5510ad">
            <td>
                4.
                Move people upwind if possible.</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr style="font-weight:bold;color:#5510ad">
            <td>
                5.
                Prevent vehicles and bystanders from entering the area.
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr style="font-weight:bold;color:#5510ad">
            <td>
                6.
                Call the fire department if there is a danger of fire.
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr style="font-weight:bold;color:#5510ad">
            <td>
                7.
                Avoid contact with any natural gas escaping from the pipeline.</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr style="font-weight:bold;color:#5510ad">
            <td>
                8.
                Warn people in nearby buildings, as gas might enter through drains if the break or leak is underground.
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    </center>

    



</asp:Content>

