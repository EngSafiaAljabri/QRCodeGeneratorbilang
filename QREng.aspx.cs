using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using ZXing;
using ZXing.Common;

namespace QRCodeGenerator
{
    public partial class QREng : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
            protected void btnGenerate_Click(object sender, EventArgs e)
            {
                string url = txtUrl0.Text.Trim();
                if (!string.IsNullOrEmpty(url))
                {
                    GenerateQRCode(url);
                }
            }

            private void GenerateQRCode(string url)
            {
                var barcodeWriter = new BarcodeWriter
                {
                    Format = BarcodeFormat.QR_CODE,
                    Options = new EncodingOptions
                    {
                        Height = 300,
                        Width = 300,
                        Margin = 0
                    }
                };

                var result = barcodeWriter.Write(url);

                using (MemoryStream ms = new MemoryStream())
                {
                    result.Save(ms, ImageFormat.Png);
                    imgQRCode0.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(ms.ToArray());
                }
            }
       

    }
}

