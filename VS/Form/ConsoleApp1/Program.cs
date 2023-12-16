using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Drawing;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            string path = "W:/!Личная/3 курс/КлиентЧ/Form/Картинки";
            int fCount = Directory.GetFiles(path, "*", SearchOption.TopDirectoryOnly).Length;
            string[] files = Directory.GetFiles(path);
            ToursIR311Entities ToursIR311 = new ToursIR311Entities();
            for(int i = 0; i < fCount; i++)
            {
                Image img = Image.FromFile(files[i]);
                byte[] arr;
                using (MemoryStream ms = new MemoryStream())
                {
                    img.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
                    arr = ms.ToArray();
                }
                string article = Path.GetFileName(files[i]);
                article = article.Substring(0, article.Length - 4);
                int q = Convert.ToInt32(article);
                var item = ToursIR311.HotelImage.FirstOrDefault
                    (p => p.HotelID == q);
                if (item != null)
                {
                    item.ImageSource = arr;
                    ToursIR311.SaveChanges();
                }
            }
        }
    }
}
