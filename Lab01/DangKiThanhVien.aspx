<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKiThanhVien.aspx.cs" Inherits="Lab01.DangKiThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .style1{
            width: 550px;
        }
        .auto-style1 {
            height: 31px;
            width: 334px;
        }
        .auto-style2 {
            text-align: center;
            width: 334px;
        }
        .auto-style3 {
            width: 334px;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="style1">
                <tr>
                    <td colspan="2" class="bg-info h3 text-center text-primary">HỒ SƠ ĐĂNG KÍ</td>
                </tr>
                <tr>
                    <td class="text-center" style="color: purple; background-color: lightgoldenrodyellow;">Thông tin đăng nhập</td>
                    <td class="text-center" style="color: purple; background-color: lightgoldenrodyellow;">Hồ sơ khách hàng</td>
                </tr>
                <tr>
                    <td class="auto-style3">Tên đăng nhập: 
                        <asp:TextBox ID="txtTendn" runat="server" Width="160px" MaxLength="16" CssClass="form-text"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTendn" runat="server" ErrorMessage="Tên đăng nhập không được rỗng" ControlToValidate="txtTendn" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revTendn" runat="server" ControlToValidate="txtTendn" ErrorMessage="Tên đăng nhập không hợp lệ" ValidationExpression="[\d|\w|\!|&amp;|_]{8}[\d|\w|\!|&amp;|_]+" ForeColor="Red">(*)</asp:RegularExpressionValidator>
                    </td>
                    <td rowspan="12">
                        <asp:Label ID="lbThongTin" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Mật khẩu: 
                        <asp:TextBox ID="txtMatkhau" runat="server" CssClass="form-text"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMatkhau" runat="server" ErrorMessage="Mật khẩu đăng nhập không được rỗng" ControlToValidate="txtMatkhau" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Nhập lại mật khẩu: 
                        <asp:TextBox ID="txtNhaplai" runat="server" CssClass="form-text"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNhaplaimatkhau" runat="server" ErrorMessage="Mật khẩu nhập lại không được rỗng" ControlToValidate="txtNhaplai" ForeColor="Red" Display="Dynamic">(*)</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMatkhau" ControlToValidate="txtNhaplai" ErrorMessage="CompareValidator" ForeColor="Red">(*)</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="color: purple; background-color: lightgoldenrodyellow;">Thông tin cá nhân</td>
                </tr>
                <tr>
                    <td class="auto-style3">Họ tên khách hàng: 
                        <asp:TextBox ID="txtHoten" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvHoten" runat="server" ErrorMessage="Họ tên không được rỗng" ControlToValidate="txtHoten" ForeColor="Red" Display="Dynamic">(*)</asp:RequiredFieldValidator>
                    </td> 
                </tr>
                <tr>
                    <td class="auto-style3">Ngày sinh: <asp:DropDownList ID="ddlNgay" runat="server">
                        </asp:DropDownList>
                        /
                        <asp:DropDownList ID="ddlThang" runat="server">
                        </asp:DropDownList>
                        /
                        <asp:DropDownList ID="ddlNam" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Email: 
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không hợp lệ" ValidationExpression="Internet Email" ForeColor="Red">(*)</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Thu nhập: 
                        <asp:TextBox ID="txtThunhap" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="rvThunhap" runat="server" ErrorMessage="Lỗi: Thu nhập từ 1 tr đến 50 tr" ControlToValidate="txtThunhap" MaximumValue="50000000" MinimumValue="1000000" Type="Integer" ForeColor="Red">(*)</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Giới tính: 
                        <asp:CheckBox ID="chPhai" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Địa chỉ: 
                        <asp:ListBox ID="lbDiaChi" runat="server" Width="186px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Điện thoại: <asp:TextBox ID="txtSDT" runat="server" Width="156px" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><asp:Button ID="btDangKy" runat="server" Text="Đăng ký" CssClass="auto-style8" OnClick="btDangKy_Click"/></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
