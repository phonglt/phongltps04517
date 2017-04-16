<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gio_Hang.aspx.cs" Inherits="Gio_Hang" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="14pt" 
            ForeColor="#CC3300" Text="CHÀO MỪNG BẠN ĐẾN VỚI TRANG GIỎ HÀNG"></asp:Label>
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/giohanglon.jpeg" />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Tổng Số Sách: " 
            Font-Size="14pt" ForeColor="#009933"></asp:Label>
        <asp:Label ID="lbltongsach" runat="server" Font-Bold="True" Font-Size="14pt" 
            ForeColor="#FF9900"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" AutoGenerateColumns="False" DataKeyNames="Masach" 
            onrowcommand="GridView1_RowCommand">
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:BoundField DataField="Masach" HeaderText="Mã Sách" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Masach" />
                <asp:ImageField DataImageUrlField="Hinhminhhoa" HeaderText="Hình Minh Họa">
                </asp:ImageField>
                <asp:BoundField DataField="Tensach" HeaderText="Tên Sách" 
                    SortExpression="Tensach" />
                <asp:BoundField DataField="Dongia" HeaderText="Đơn Giá" 
                    SortExpression="Dongia" />
                <asp:ButtonField HeaderText="Họat Động" Text="Xóa Sách" CommandName = "del" />
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        
        <br />
        <asp:HyperLink ID="hplthanhtoan" runat="server" 
            ImageUrl="~/images/ThanhToan.gif"></asp:HyperLink>
        <br />
        <br />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/giaohangSlogan.jpg" />
        <br />
        <asp:Label ID="lblthongbao" runat="server" ForeColor="#FF3300"></asp:Label>
        
    </center>
</asp:Content>

