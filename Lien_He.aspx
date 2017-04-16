<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Lien_He.aspx.cs" Inherits="Lien_He" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15pt" 
            ForeColor="#CC9900" Text="Hãy Liên Hệ Với Chúng Tôi"></asp:Label>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="macn" 
            DataSourceID="SqlDataSource1" Width="100%">
            <ItemTemplate>
                <table cellpadding="3" cellspacing="0" class="style2">
                    <tr>
                        <td rowspan="4" style="vertical-align: top; text-align: center; width: 35%;">
                            <asp:Image ID="Image2" runat="server" Width="100%" 
                                ImageUrl='<%# Eval("hinh") %>' />
                        </td>
                        <td style="text-align: left; padding-left: 8px">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#990033" 
                                Text="Tên Chi Nhánh: "></asp:Label>
                            <asp:Label ID="lbltencn" runat="server" Text='<%# Eval("tencn") %>' 
                                Font-Bold="True" ForeColor="#009900"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left; padding-left: 8px">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#990033" 
                                Text="Địa Chỉ: "></asp:Label>
                            <asp:Label ID="lbldiachi" runat="server" Font-Bold="True" ForeColor="#009900" 
                                Text='<%# Eval("diachi") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left; padding-left: 8px">
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#990033" 
                                Text="Số Điện Thọai: "></asp:Label>
                            <asp:Label ID="lblsdt" runat="server" Font-Bold="True" ForeColor="#009900" 
                                Text='<%# Eval("sdt") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left; padding-left: 8px">
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="#990033" 
                                Text="Email: "></asp:Label>
                            <asp:Label ID="lblemail" runat="server" Font-Bold="True" ForeColor="#009900" 
                                Text='<%# Eval("email") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [CHINHANH]"></asp:SqlDataSource>
        <br />
        
    </center>
</asp:Content>

