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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="style1">
                <tr>
                    <td colspan="2" class="text-center h3">HỒ SƠ ĐĂNG KÍ0</td>
                </tr>
                <tr>
                    <td class="text-center">Thông tin đăng nhập</td>
                    <td class="text-center">Hồ sơ khách hàng</td>
                </tr>
                <tr>
                    <td>Tên đăng nhập: 
                        <asp:TextBox ID="txtTendn" runat="server" Width="160px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTendn" runat="server" ErrorMessage="Tên đăng nhập không được rỗng" ControlToValidate="txtTendn" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revTendn" runat="server" ControlToValidate="txtTendn" ErrorMessage="Tên đăng nhập không hợp lệ" ValidationExpression="[\d|\w|\!|&amp;|_]{8}[\d|\w|\!|&amp;|_]+" ForeColor="Red">(*)</asp:RegularExpressionValidator>
                    </td>
                    <td rowspan="12">

                    </td>
                </tr>
                <tr>
                    <td>Mật khẩu: 
                        <asp:TextBox ID="txtMatkhau" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMatkhau" runat="server" ErrorMessage="Mật khẩu đăng nhập không được rỗng" ControlToValidate="txtMatkhau" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Nhập lại mật khẩu: 
                        <asp:TextBox ID="txtNhaplai" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNhaplaimatkhau" runat="server" ErrorMessage="Mật khẩu nhập lại không được rỗng" ControlToValidate="txtNhaplai" ForeColor="Red" Display="Dynamic">(*)</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMatkhau" ControlToValidate="txtNhaplai" ErrorMessage="CompareValidator" ForeColor="Red">(*)</asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center">Thông tin cá nhân</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Họ tên khách hàng: 
                        <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvHoten" runat="server" ErrorMessage="Họ tên không được rỗng" ControlToValidate="txtHoten" ForeColor="Red" Display="Dynamic">(*)</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Ngày sinh:<asp:DropDownList ID="ddlNgay" runat="server">
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem Value="2"></asp:ListItem>
                        <asp:ListItem Value="3"></asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Email: 
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không hợp lệ" ValidationExpression="Internet Email" ForeColor="Red">(*)</asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Thu nhập: </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
