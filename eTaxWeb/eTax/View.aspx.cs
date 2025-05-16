using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eTaxWeb.eTax
{
    public partial class View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPdfFiles();
            }
        }

        private void LoadPdfFiles()
        {
            // Define the folder path (adjust as needed)
            string folderPath = Server.MapPath("~/Documents");

            // Get all PDF files in the folder
            if (Directory.Exists(folderPath))
            {
                var pdfFiles = Directory.GetFiles(folderPath, "*.pdf");
                var fileList = new System.Data.DataTable();
                fileList.Columns.Add("FileName");
                fileList.Columns.Add("FilePath");

                foreach (var file in pdfFiles)
                {
                    var fileName = Path.GetFileName(file);
                    var filePath = ResolveUrl("~/Documents/" + fileName);
                    fileList.Rows.Add(fileName, filePath);
                }

                // Bind to GridView
                gvPdfFiles.DataSource = fileList;
                gvPdfFiles.DataBind();
            }
        }
    }
}