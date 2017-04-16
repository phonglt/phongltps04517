<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Tim_Kiem.ascx.cs" Inherits="UserControl_Tim_Kiem" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:TextBox ID="TextBox1" runat="server" Font-Italic="True" ForeColor="Gray" 
    Width="120px"></asp:TextBox>
<asp:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" 
    runat="server" Enabled="True" TargetControlID="TextBox1" 
    WatermarkText="Gõ Vào Tựa Sách...">
</asp:TextBoxWatermarkExtender>
&nbsp;
<asp:ImageButton ID="ImageButton1" runat="server" 
    ImageUrl="~/images/Search.png" ToolTip="Tìm Kiếm Sách" Width="20px" 
    onclick="ImageButton1_Click" />
