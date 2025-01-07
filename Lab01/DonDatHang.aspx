<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab01.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .ketqua {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <table align="center">
               <tr>
                    <td colspan="2" class="text-center h3 alert alert-success">ĐƠN ĐẶT HÀNG</td>
                </tr>
               <tr>
                    <td>Khách hàng: </td>
                    <td>
                        <asp:TextBox ID="txtKhachHang" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                    </td>
                </tr>
               <tr>
                    <td>Địa chỉ: </td>
                    <td>
                        <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>
                    </td>
                </tr>
               <tr>
                    <td>Mã số thuế: </td>
                    <td>
                        <asp:TextBox ID="txtMaSoThue" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">
                        Chọn các loại bánh sau: <br />
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                        <br />
                        Số lượng:
                        <asp:TextBox ID="txtSoLuong" runat="server" Width="90px"></asp:TextBox>
                        <br />
                        <asp:Button ID="btnAdd" runat="server" Text="&gt;" Width="30px" OnClick="btnAdd_Click" />
                    </td>
                    <td>Danh sách bánh được đặt: 
                        <br />
                        <asp:ListBox ID="ListBox1" runat="server" CssClass="form-control" SelectionMode="Multiple"></asp:ListBox>
                        <asp:ImageButton ID="btnRemove" runat="server" ImageUrl="~/Images/delete.gif" OnClick="btnRemove_Click" />
                    </td>
                </tr>
               <tr class="text-center">
                   <td colspan="2"><asp:Button ID="btnDonDatHang" runat="server" Text="In đơn đặt hàng" Width="120px" OnClick="btnDonDatHang_Click"/></td>
               </tr>
           </table>
            <asp:Label CssClass="ketqua" ID="lblKetQua" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
