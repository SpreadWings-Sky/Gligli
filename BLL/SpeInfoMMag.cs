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
        public static List<SpeInfo> SelectSpAll(string key)
        {
            return SpeInfoServices.SelectSpALL(key);
        }
        //添加专栏
        public static bool AddSpe(SpeInfo spe)
        {
            return SpeInfoServices.AddSpe(spe);
        }
        //查询用户全部专栏
        public static List<SpeInfo> SelectSpeAllByUserID(int UserID)
        {
            return SpeInfoServices.SelectSpeAllByUserID(UserID);
        }
        //查询用户审核专栏
        public static List<SpeInfo> SelectSpeNoByUserID(int UserID)
        {
            return SpeInfoServices.SelectSpeNoByUserID(UserID);
        }
        //查询用户过审专栏
        public static List<SpeInfo> SelectSpeTrueByUserID(int UserID)
        {
            return SpeInfoServices.SelectSpeTrueByUserID(UserID);
        }
        //查询用户未过审专栏
        public static List<SpeInfo> SelectSpePasByUserID(int UserID)
        {
            return SpeInfoServices.SelectSpePasByUserID(UserID);
        }
        //删除通过id专栏
        public static bool DeleteSpByID(int id)
        {
            return SpeInfoServices.DeleteSpByID(id);
        }
        //通过id更新信息
        public static bool UpSpInfoByid(int id, SpeInfo sp)
        {
            return SpeInfoServices.UpSpInfoByID(id, sp);
        }
        //通过ID查询专栏地址
        public static string SelectSpByID(int id)
        {
            return SpeInfoServices.SelectSpByID(id);
        }
        //通过Id查询专栏信息
        public static SpeInfo SelectSpeBySpeID(int id)
        {
            return SpeInfoServices.SelectSpeBySpeID(id);
        }
        //用户更新专栏信息
        public static bool UserUpSpeByID(SpeInfo sp)
        {
            return SpeInfoServices.UserUpSpeByID(sp);
        }
        //首页推荐视频
        public static List<SpeInfo> SelectSpTop8StateAll()
        {
            List<SpeInfo> All = SpeInfoServices.SelectSpStateAll();
            List<SpeInfo> RandomSp = new List<SpeInfo>();
            //生成随机索引
            int[] index = UseDoubleArrayToNonRepeatedRandom(8, 0, All.Count);
            //生成随机数
            for (int i = 0; i < index.Length; i++)
            {
                RandomSp.Add(All[index[i]]);
            }
            return RandomSp;
        }
        //阅读量前9的专栏
        public static List<SpeInfo> SelectSpTop9()
        {
            return SpeInfoServices.SelectSpTop9();
        }
        /// <summary>
        /// 方法一 使用随机抽取数组index中的数，填充在新的数组array中，使数组array中的数是随机的
        /// 方法一思路：用一个数组来保存索引号，先随机生成一个数组位置，然后把随机抽取到的位置的索引号取出来，
        ///             并把最后一个索引号复制到当前的数组位置，然后使随机数的上限减一，具体如：先把这100个数放在一个数组内，
        ///             每次随机取一个位置（第一次是1-100，第二次是1-99，...），将该位置的数用最后的数代替。
        /// </summary>
        private static int[] UseDoubleArrayToNonRepeatedRandom(int length, int minValue, int maxValue)
        {
            int seed = Guid.NewGuid().GetHashCode();
            Random radom = new Random(seed);
            int[] index = new int[length];
            for (int i = 0; i < length; i++)
            {
                index[i] = i + 1;
            }

            int[] array = new int[length]; // 用来保存随机生成的不重复的数 
            int site = length;             // 设置上限 
            int idx;                       // 获取index数组中索引为idx位置的数据，赋给结果数组array的j索引位置
            for (int j = 0; j < length; j++)
            {
                idx = radom.Next(0, site - 1);  // 生成随机索引数
                array[j] = index[idx];          // 在随机索引位置取出一个数，保存到结果数组 
                index[idx] = index[site - 1];   // 作废当前索引位置数据，并用数组的最后一个数据代替之
                site--;                         // 索引位置的上限减一（弃置最后一个数据）
            }
            return array;
        }
        //专栏
        public static List<SpeInfo> SpeInfos()
        {
            return SpeInfoServices.SpeInfos();
        }
        public static List<SpeInfo> Info(int id)
        {
            return SpeInfoServices.Info(id);
        }
        public static List<SpeInfo> Collection(int id)
        {
            return SpeInfoServices.Collection(id);
        }
        public static List<SpeInfo> SpeInfo(int id)
        {
            return SpeInfoServices.SpeInfo(id);
        }
        public static List<SpeInfo> Sptui()
        {
            return SpeInfoServices.Sptui();
        }
        public static List<SpeInfo> Deta(int id)
        {
            return SpeInfoServices.Deta(id);
        }
        //详情用户
        public static SpeInfo UsInfo(int id)
        {
            return SpeInfoServices.UsInfo(id);
        }
        //阅读量
        public static bool SpNu(int id)
        {
            return SpeInfoServices.SpNu(id);
        }
    }
}
