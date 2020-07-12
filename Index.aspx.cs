using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UploadImageAndShowInGrid
{
    public partial class Index : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cmd;
        string cs = ConfigurationManager.ConnectionStrings["MyString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection(cs);
            cn.Open();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileName = FileUpload1.FileName;
                string folderPath = Server.MapPath("~/Images");
                string image = "/Images/" + fileName;
                string storeImage = folderPath + fileName;
                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }
                FileUpload1.SaveAs(storeImage);

                cmd = new SqlCommand("insert into ImageExample (ImageName,ImagePath) values('" + fileName + "','" + image + "')", cn);
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Image upload successfully";
                lblMsg.ForeColor = Color.Green;
                
                GridView1.DataBind();

            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "Please select Image";
            }

        }
    }
}