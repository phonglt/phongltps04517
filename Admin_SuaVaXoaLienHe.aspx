<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_SuaVaXoaLienHe.aspx.cs" Inherits="Admin_SuaLienHe" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="13pt" 
            ForeColor="#3399FF" Text="SỬA VÀ XÓA LIÊN HỆ"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="macn" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" onrowcommand="GridView1_RowCommand">
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="macn" HeaderText="Mã Chi Nhánh" 
                    InsertVisible="False" ReadOnly="True" SortExpression="macn" />
                <asp:BoundField DataField="tencn" HeaderText="Tên Chi Nhánh" 
                    SortExpression="tencn" />
                <asp:BoundField DataField="diachi" HeaderText="Địa Chỉ" 
                    SortExpression="diachi" />
                <asp:ButtonField HeaderText="Tác Vụ" Text="Sửa Tin" CommandName="select" />
                <asp:ButtonField HeaderText="Tác Vụ" Text="Xóa Tin" CommandName="del"/>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [macn], [tencn], [diachi] FROM [CHINHANH]">
        </asp:SqlDataSource>
        
        <br />
        <table cellpadding="3" cellspacing="0" class="style2">
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label2" runat="server" Text="Mã chi Nhánh"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtmacn" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtmacn" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label3" runat="server" Text="Tên Chi Nhánh"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txttencn" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label4" runat="server" Text="Địa Chỉ"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label5" runat="server" Text="Số Điện Thọai"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3" style="text-align: right; padding-right: 8px;">
                    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="style4" 
                    style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:Label ID="Label7" runat="server" Text="Đưa Ảnh Đại Diện: "></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;
                    <asp:Button ID="btnduaanhlen" runat="server" onclick="btnduaanhlen_Click" 
                        Text="Đưa Ảnh Lên" />
                </td>
            </tr>
            <tr>
                <td colspan="2" 
                    style="text-align: center; padding-top: 5px; padding-bottom: 5px;">
                    <asp:Label ID="Label8" runat="server" Text="Đường Dẫn Ảnh: "></asp:Label>
&nbsp;
                    <asp:TextBox ID="txtpath" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:Button ID="btnhoantat" runat="server" onclick="btnhoantat_Click" 
                        Text="Hòan Tất" />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <br />
                    <asp:Label ID="lblthongbao" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        
    </center>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style3
        {
            width: 50%;
            height: 18px;
        }
        .style4
        {
            height: 18px;
        }
    </style>

</asp:Content>


