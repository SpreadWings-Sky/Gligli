using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using GliDAL;

namespace BLL
{
    public class ImgRotationInfoMMag
    {
        //查询全部轮播图
        public static List<ImgRotationInfo> SelectImgAll()
        {
            return ImgRotationInfoServices.SelectImgAll();
        }
        //通过ID禁用图片
        public static bool DeImgById(int id)
        {
            return ImgRotationInfoServices.DeImgByID(id);
        }
        //通过Id更新图片信息
        public static bool UpImgByID(int id,ImgRotationInfo ig)
        {
            return ImgRotationInfoServices.UpImgByID(id, ig);
        }
        //查询对应属性的图片
        public static List<ImgRotationInfo> SelectImgByPage(string page)
        {
            return ImgRotationInfoServices.SelectImgByPage(page);
        }
    }
}
