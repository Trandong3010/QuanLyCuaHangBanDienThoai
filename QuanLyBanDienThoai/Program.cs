﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyBanDienThoai
{
	static class Program
	{
		/// <summary>
		/// The main entry point for the application.
		/// </summary>
		[STAThread]
		static void Main()
		{
			Application.EnableVisualStyles();
			Application.SetCompatibleTextRenderingDefault(false);
			//Application.Run(new FormQLCHBanDT());
			Application.Run(new FormDangNhap());
			//Application.Run(new FormThongTinSanPham());
			//Application.Run(new NguoiDung());
			//Application.Run(new PhanQuyen());
			//Application.Run(new ThayDoiMatKhau());
		}
	}
}
