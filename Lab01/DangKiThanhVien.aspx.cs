using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DangKiThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                KhoiTaoDuLieu();
            }
        }

        private void KhoiTaoDuLieu()
        {
            ddlNgay.Items.Add(new ListItem("--Chọn ngày--", ""));
            for (int i = 1; i <= 31; i++)
            {
                ddlNgay.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            ddlThang.Items.Add(new ListItem("--Chọn tháng--", ""));
            for (int i = 1; i <= 12; i++)
            {
                ddlThang.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            ddlNam.Items.Add(new ListItem("--Chọn năm--", ""));
            for (int i = 1970; i <= 2005; i++)
            {
                ddlNam.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        protected void btDangKy_Click(object sender, EventArgs e)
        {
            string kq = "<ul>";
            kq += $"<li> Họ tên: <i> {txtHoten.Text}</i></li>";
            kq += $"<li> Tên đăng nhập: <i> {txtTendn.Text}</i></li>";
            kq += $"<li> Mật khẩu: <i> {txtMatkhau.Text}</i></li>";

            string ngaySinh = $"{ddlNgay.SelectedValue}/{ddlThang.SelectedValue}/{ddlNam.SelectedValue}";
            if (!string.IsNullOrEmpty(ddlNgay.SelectedValue) && !string.IsNullOrEmpty(ddlThang.SelectedValue) && !string.IsNullOrEmpty(ddlNam.SelectedValue))
            {
                kq += $"<li> Ngày sinh: <i> {ngaySinh}</i></li>";
            }
            else
            {
                kq += "<li> Ngày sinh: <i>Chưa chọn</i></li>";
            }

            kq += $"<li> Email: <i> {txtEmail.Text}</i></li>";
            kq += $"<li> Thu nhập: <i> {txtThunhap.Text}</i></li>";
            string gioiTinh = chPhai.Checked ? "Nam" : "Nữ";
            kq += $"<li> Giới tính: <i> {gioiTinh}</i></li>";
            kq += $"<li> Địa chỉ: <i> {lbDiaChi.Text}</i></li>";
            kq += $"<li> Điện thoại: <i> {txtSDT.Text}</i></li>";

            kq += "</ul>";

            lbThongTin.Text = kq;
        }
    }
}