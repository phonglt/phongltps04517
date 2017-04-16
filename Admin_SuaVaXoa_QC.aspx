<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_SuaVaXoa_QC.aspx.cs" Inherits="Admin_SuaVaXoa_QC" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <table cellpadding="3" cellspacing="0" class="style2">
            <tr>
                <td colspan="2">
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="13pt" 
            ForeColor="#3399FF" Text="SỬA VÀ XÓA QUẢNG CÁO"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="STT" 
                        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                        PageSize="8" onrowcommand="GridView1_RowCommand">
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <Columns>
                            <asp:BoundField DataField="STT" HeaderText="Số Thứ Tự" InsertVisible="False" 
                                ReadOnly="True" SortExpression="STT" />
                            <asp:BoundField DataField="TenCTy" HeaderText="Tên Công Ty" 
                                SortExpression="TenCTy" />
                            <asp:BoundField DataField="HREF" HeaderText="Link Liên Kết" 
                                SortExpression="HREF" />
                            <asp:ButtonField HeaderText="Tác Vụ" Text="Chọn QC" CommandName = "select" />
                            <asp:ButtonField HeaderText="Tác Vụ" Text="Xóa QC" CommandName = "del" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [STT], [TenCTy], [HREF] FROM [QUANGCAO]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label2" runat="server" Text="Số Thứ Tự" Font-Bold="True"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtstt" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtstt" Display="Dynamic" ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label3" runat="server" Text="Tên Công Ty" Font-Bold="True"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txttenct" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label4" runat="server" Text="Link Liên Kết" Font-Bold="True"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtlink" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label5" runat="server" Text="Ngày Bắt Đầu" Font-Bold="True"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtngaybd" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="txtngaybd_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtngaybd">
                    </asp:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label6" runat="server" Text="Ngày Hết Hạn" Font-Bold="True"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-bottom: 5px; padding-top: 5px;">
                    <asp:TextBox ID="txtngaykt" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="txtngaykt_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtngaykt">
                    </asp:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:Label ID="Label7" runat="server" Text="Đưa Ảnh Đại Diện: " 
                        Font-Bold="True"></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;
                    <asp:Button ID="btnduaanhlen" runat="server" onclick="btnduaanhlen_Click" 
                        Text="Đưa Ảnh Lên" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="padding-top: 5px; padding-bottom: 5px">
                    <asp:Label ID="Label8" runat="server" Text="Đường Dẫn Ảnh: " Font-Bold="True"></asp:Label>
&nbsp;<asp:TextBox ID="txtpath" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnhoantat" runat="server" onclick="btnhoantat_Click" 
                        Text="Hòan Tất" />
                    <br />
                    <asp:Label ID="lblthongbao" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        
    </center>
</asp:Content>

