using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using GliDAL;

namespace BLL
{
    public class TypeInfoManager
    {
        //查询各分类下视频总数
        public static List<TypeInfo> SelectTypeVideoALL()
        {
            return TypeInfoService.SelectTypeVideoALL();
        }
        //查询分类表
        public static List<TypeInfo> SelectTypeAll()
        {
            return TypeInfoService.SelectTypeAll();
        }
    }
}
