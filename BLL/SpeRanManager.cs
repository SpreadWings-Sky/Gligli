using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using GliDAL;

namespace BLL
{
    public class SpeRanManager
    {
        public static List<SpeRan> SpeRans()
        {
            return SpeRanServices.SpeRans();
        }
    }
}
