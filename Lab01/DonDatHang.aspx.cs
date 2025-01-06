using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DropDownList1.Items.Add("Bánh su");
                DropDownList1.Items.Add("Bánh mì");
                DropDownList1.Items.Add("Bánh xe");
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
                string tenbanh = DropDownList1.SelectedItem.Text;
                int soluong = int.Parse(txtSoLuong.Text);
                string kq = string.Format("{0}  ({1})", tenbanh, soluong);
                ListBox1.Items.Add(kq);
            
        }

        protected void btnRemove_Click(object sender, ImageClickEventArgs e)
        {
            for(int i = ListBox1.Items.Count - 1; i >= 0; i--)
            {
                if (ListBox1.Items[i].Selected)
                {
                    ListBox1.Items.RemoveAt(i);
                }
            }
        }

        protected void btnDonDatHang_Click(object sender, EventArgs e)
        {
            string kq = "<div class='h3 text-center'>HÓA ĐƠN ĐẶT HÀNG</div>";
            kq += "<div class='border p-3'>";

            // Thu thập thông tin client
            kq += string.Format("<p><b>Khách hàng:</b> {0}</p>", txtKhachHang.Text);
            kq += string.Format("<p><b>Địa chỉ:</b> {0}</p>", txtDiaChi.Text);
            kq += string.Format("<p><b>Mã số thuế:</b> {0}</p>", txtMaSoThue.Text);
            kq += "Đặt các loại bánh sau: ";
            kq += "<table class='table border'>";
            foreach(ListItem item in ListBox1.Items)
            {
                kq += string.Format("<tr><td>{0}</td><td>{1}</td></tr>", item.Text, item.Text);
            }
            kq += "</table>";
            kq += "</div>";

            lblKetQua.Text = kq;
        }
    }
}