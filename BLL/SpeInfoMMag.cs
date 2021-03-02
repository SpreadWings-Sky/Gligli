using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using GliDAL;

namespace BLL
{
    public class SpeInfoMMag
    {
        //查询全部专栏
        public static List<SpeInfo> SelectSpAll()
        {
            return SpeInfoServices.SelectSpALL();
        }
        //删除通过id专栏
        public static bool DeleteSpByID(int id)
        {
            return SpeInfoServices.DeleteSpByID(id);
        }
        //通过id更新信息
        public static bool UpSpInfoByid(int id,SpeInfo sp)
        {
            return SpeInfoServices.UpSpInfoByID(id, sp);
        }
        //通过ID查询专栏地址
        public static string SelectSpByID(int id)
        {
            return SpeInfoServices.SelectSpByID(id);
        }
    }
}
