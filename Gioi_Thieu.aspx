<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gioi_Thieu.aspx.cs" Inherits="Gioi_Thieu" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#CC3300" 
            Text="KIEU BROTHERS BOOK STORE" Font-Size="15pt"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblgt" runat="server" Font-Italic="True" Font-Size="14pt"></asp:Label>
        
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="100%" 
            ImageUrl="~/images/gioithieusach.jpg" Width="100%" />
        
    </center>
</asp:Content>

