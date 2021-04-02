using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using GliDAL;

namespace BLL
{
    public  class CollectionManager
    {
        public static List<CollectionInfo> giligili(int id)
        {
            return CollectionService.giligili(id);
        }
        public static List<CollectionInfo> giligili2(int id)
        {
            return CollectionService.giligili2(id);
        }
    }
}
