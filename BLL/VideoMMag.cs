using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using GliDAL;

namespace BLL
{
    public class VideoMMag
    {
        //查询全部视频
        public static List<VideoInfo> SelectVideoALL()
        {
            return VideoInfoServices.SelectVideoAll();
        }
        //通过ID删除视频
        public static bool DeleteVideobyID(int id)
        {
            return VideoInfoServices.DeleteVideoByID(id);
        }
        //通过视频ID更新视频信息
        public static bool UpVideobyID(int id,VideoInfo vd)
        {
            return VideoInfoServices.UpVideoByid(id, vd);
        }
        //查询热门前六视频通过播放量排序
        public static List<VideoInfo> SelectVideoHotTopSix()
        {
            return VideoInfoServices.SelectVideoHotTopSix();
        }
        //通过分类查找分区视频返回随机八个
        public static List<VideoInfo> SelectVideoByType(int type)
        {
            List<VideoInfo> VideoAll = VideoInfoServices.SelectVideoByType(type);
            List<VideoInfo> RandomVideo = new List<VideoInfo>();
            //生成随机索引
            int[] index = UseDoubleArrayToNonRepeatedRandom(8, 0, VideoAll.Count);
            //生成随机数
            for (int i = 0; i < index.Length; i++)
            {
                RandomVideo.Add(VideoAll[index[i]]);
            }
            return RandomVideo;     
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
        //杨-视频
        public static VideoInfo getvideoList(int id)
        {
            return videoSevice.getvideoList(id);
        }
        public static List<VideoInfo> Gethotlist(int id, int type)
        {
            return videoSevice.Gethotlist(id, type);
        }
    }
}
