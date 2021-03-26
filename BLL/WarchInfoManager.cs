using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using GliDAL;

namespace BLL
{
    public class WarchInfoManager
    {
        public static List<WarchInfo> Info(int id)
        {
            return WarchInfoService.Info(id);
        }
    }
}
