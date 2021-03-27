using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    [Serializable]
    public  class TypeInfo
    {
        public int TpID { get; set; }
        public string TypeName { get; set; }
        public int TypeClass { get; set; }
        public int  Rele { get; set; }
        //连表
        public int TypeVideoCount { get; set; }
    }
}
