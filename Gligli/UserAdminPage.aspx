<%@ Page Title="" Language="C#" MasterPageFile="~/UserAdmin.Master" AutoEventWireup="true" CodeBehind="UserAdminPage.aspx.cs" Inherits="Gligli.UserAdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/User_upVideo.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- 内容头部 -->
    <div class="upload_warp">
        <div class="new_link_top">
            <div class="new_link_nav">
                <a href="#" class="nav_item active">视频管理</a>
                <a href="#" class="nav_item">专栏管理</a>
            </div>
            <!-- 内容主题 -->
            <div class="load_from">
                <div class="upload_con">
                    <div class="con_one l_default">
                        <ul>
                            <li class="one_active">全部稿件<span><%=VideoCount %></span></li>
                            |
                                        <li>进行中<span><%= VideoNo %></span></li>
                            |
                                        <li>已通过<span><%= VideoTrue %></span></li>
                            |
                                        <li>未通过<span><%= Videopas %></span></li>
                            |
                                        <%--<select name="" id="con_one_right_e">
                                            <option value="">投稿时间排序</option>
                                            <option value="">播放数排序</option>
                                            <option value="">评论数排序</option>
                                            <option value="">收藏数排序</option>
                                            <option value="">弹幕数排序</option>
                                        </select>
                            <select name="" id="con_one_right_y">
                                <option value="">全部分区</option>
                                <option value="">游戏<span>(0)</span></option>
                                <option value="">生活<span>(0)</span></option>
                                <option value="">娱乐<span>(0)</span></option>
                                <option value="">影视<span>(0)</span></option>
                                <option value="">音乐<span>(0)</span></option>
                                <option value="">知识<span>(0)</span></option>
                                <option value="">数码<span>(0)</span></option>
                                <option value="">动画<span>(0)</span></option>
                                <option value="">时尚<span>(0)</span></option>
                                <option value="">舞蹈<span>(0)</span></option>
                                <option value="">番剧<span>(0)</span></option>
                                <option value="">纪录片<span>(0)</span></option>
                                <option value="">鬼畜<span>(0)</span></option>
                                <option value="">国创<span>(0)</span></option>
                                <option value="">电视剧<span>(0)</span></option>
                                <option value="">电影<span>(0)</span></option>
                                <option value="">资讯<span>(0)</span></option>
                                <option value="">美食<span>(0)</span></option>
                                <option value="">动物圈<span>(0)</span></option>
                            </select>--%>
                        </ul>
                    </div>
                    <div class="con_two">
                        <!-- 专栏管理内容 -->
                        <ul>
                            <li class="two_active">全部稿件<span><%=SpeCount %></span></li>
                            |
                                        <li>进行中<span><%= SpeNo%></span></li>
                            |
                                        <li>已通过<span><%= SpeTrue%></span></li>
                            |
                                        <li>未通过<span><%= Spepas%></span></li>
                            |
                        </ul>
                    </div>
                </div>
                <!-- 盒子1的内容 -->
                <div class="con_one_tong">
                    <div class="one_one o_default">
                        <!-- 全部稿件 -->
                        <!-- 一个盒子开始 -->
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td rowspan="3">
                                            <img src='<%# Eval("bacimg") %>' alt=""></td>
                                        <td><b><%# Eval("Title") %></b><em style="font-size:12px;color: orange;margin-left:10px"><%# Eval("State") %></em></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2"><%# Eval("Duction") %></td>
                                    </tr>
                                    <a href='DeleteVideoByID.aspx?id=<%# Eval("VideoID") %>' onclick="javascript:return confirm('确认删除？')" class="one_right">删除</a>
                                    <a href='UserEditWeb.aspx?id=<%# Eval("VideoID") %>&Type=Video' class="one_right">编辑</a>
                                </table>
                                <span>————————————————————————————————————————————————————————————</span>
                            </ItemTemplate>
                        </asp:Repeater>
                        <!-- 一个盒子结束 -->
                    </div>
                    <div class="one_two">
                        <!-- 一个盒子开始 -->
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td rowspan="3">
                                            <img src='<%# Eval("bacimg") %>' alt=""></td>
                                        <td><b><%# Eval("Title") %></b><em style="font-size:12px;color:#0094ff;margin-left:10px"><%# Eval("State") %></em></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2"><%# Eval("Duction") %></td>
                                    </tr>
                                    <a href='DeleteVideoByID.aspx?id=<%# Eval("VideoID") %>' onclick="javascript:return confirm('确认删除？')" class="one_right">删除</a>
                                    <a href='UserEditWeb.aspx?id=<%# Eval("VideoID") %>&Type=Video' class="one_right">编辑</a>
                                </table>
                                <span>————————————————————————————————————————————————————————————</span>
                            </ItemTemplate>
                        </asp:Repeater>
                        <!-- 一个盒子结束 -->
                    </div>
                    <div class="one_three">
                        <!-- 一个盒子开始 -->
                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td rowspan="3">
                                            <img src='<%# Eval("bacimg") %>' alt=""></td>
                                        <td><b><%# Eval("Title") %></b><em style="font-size:12px;color:limegreen;margin-left:10px"><%# Eval("State") %></em></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2"><%# Eval("Duction") %></td>
                                    </tr>
                                    <a href='DeleteVideoByID.aspx?id=<%# Eval("VideoID") %>' onclick="javascript:return confirm('确认删除？')" class="one_right">删除</a>
                                    <a href='UserEditWeb.aspx?id=<%# Eval("VideoID") %>&Type=Video' class="one_right">编辑</a>
                                </table>
                                <span>————————————————————————————————————————————————————————————</span>
                            </ItemTemplate>
                        </asp:Repeater>
                        <!-- 一个盒子结束 -->
                    </div>
                    <div class="one_four">
                        <!-- 一个盒子开始 -->
                        <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td rowspan="3">
                                            <img src='<%# Eval("bacimg") %>' alt=""></td>
                                        <td><b><%# Eval("Title") %></b><em style="font-size:12px;color:limegreen;margin-left:10px"><%# Eval("State") %></em></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2"><%# Eval("Duction") %></td>
                                    </tr>
                                    <a href='DeleteVideoByID.aspx?id=<%# Eval("VideoID") %>' onclick="javascript:return confirm('确认删除？')" class="one_right">删除</a>
                                    <a href='UserEditWeb.aspx?id=<%# Eval("VideoID") %>&Type=Video' class="one_right">编辑</a>
                                </table>
                                <span>————————————————————————————————————————————————————————————</span>
                            </ItemTemplate>
                        </asp:Repeater>
                        <!-- 一个盒子结束 -->
                    </div>
                </div>
                <!-- 盒子2的内容 -->
                <div class="con_one_zhuan">
                    <!-- 专栏管理 -->
                    <div class="zhuan_one">
                        <!-- 一个盒子开始 -->
                        <asp:Repeater ID="Repeater5" runat="server">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td rowspan="3">
                                            <img src='<%# Eval("PageImg") %>' alt=""></td>
                                        <td><b><%# Eval("Title") %></b><em style="font-size:12px;color:limegreen;margin-left:10px"><%# Eval("State") %></em></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2"><%# Eval("SpUrl").ToString().Length>20?Eval("SpUrl").ToString().Substring(0,10):Eval("SpUrl").ToString() %></td>
                                    </tr>
                                    <a href='DeleteSpeByID.aspx?id=<%# Eval("spID") %>' onclick="javascript:return confirm('确认删除？')" class="one_right">删除</a>
                                    <a href='UserEditWeb.aspx?id=<%# Eval("spID") %>&Type=Spe' class="one_right">编辑</a>
                                </table>
                                <span>————————————————————————————————————————————————————————————</span>
                            </ItemTemplate>
                        </asp:Repeater>
                        <!-- 一个盒子结束 -->
                    </div>
                    <div class="zhuan_two">
                        <!-- 一个盒子开始 -->
                        <asp:Repeater ID="Repeater6" runat="server">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td rowspan="3">
                                            <img src='<%# Eval("PageImg") %>' alt=""></td>
                                        <td><b><%# Eval("Title") %></b><em style="font-size:12px;color:limegreen;margin-left:10px"><%# Eval("State") %></em></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2"><%# Eval("SpUrl").ToString().Length>20?Eval("SpUrl").ToString().Substring(0,10):Eval("SpUrl").ToString() %></td>
                                    </tr>
                                    <a href='DeleteSpeByID.aspx?id=<%# Eval("spID") %>' onclick="javascript:return confirm('确认删除？')" class="one_right">删除</a>
                                    <a href='UserEditWeb.aspx?id=<%# Eval("spID") %>&Type=Spe' class="one_right">编辑</a>
                                </table>
                                <span>————————————————————————————————————————————————————————————</span>
                            </ItemTemplate>
                        </asp:Repeater>
                        <!-- 一个盒子结束 -->
                    </div>
                    <div class="zhuan_three">
                        <!-- 一个盒子开始 -->
                        <asp:Repeater ID="Repeater7" runat="server">
                            <ItemTemplate>
                               <table>
                                    <tr>
                                        <td rowspan="3">
                                            <img src='<%# Eval("PageImg") %>' alt=""></td>
                                        <td><b><%# Eval("Title") %></b><em style="font-size:12px;color:limegreen;margin-left:10px"><%# Eval("State") %></em></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2"><%# Eval("SpUrl").ToString().Length>20?Eval("SpUrl").ToString().Substring(0,10):Eval("SpUrl").ToString() %></td>
                                    </tr>
                                    <a href='DeleteSpeByID.aspx?id=<%# Eval("spID") %>' onclick="javascript:return confirm('确认删除？')" class="one_right">删除</a>
                                    <a href='UserEditWeb.aspx?id=<%# Eval("spID") %>&Type=Spe' class="one_right">编辑</a>
                                </table>
                                <span>————————————————————————————————————————————————————————————</span>
                            </ItemTemplate>
                        </asp:Repeater>
                        <!-- 一个盒子结束 -->
                    </div>
                    <div class="zhuan_four">
                        <!-- 一个盒子开始 -->
                        <asp:Repeater ID="Repeater8" runat="server">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td rowspan="3">
                                            <img src='<%# Eval("PageImg") %>' alt=""></td>
                                        <td><b><%# Eval("Title") %></b><em style="font-size:12px;color:limegreen;margin-left:10px"><%# Eval("State") %></em></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2"><%# Eval("SpUrl").ToString().Length>20?Eval("SpUrl").ToString().Substring(0,10):Eval("SpUrl").ToString() %></td>
                                    </tr>
                                    <a href='DeleteSpeByID.aspx?id=<%# Eval("spID") %>' onclick="javascript:return confirm('确认删除？')" class="one_right">删除</a>
                                    <a href='UserEditWeb.aspx?id=<%# Eval("spID") %>&Type=Spe' class="one_right">编辑</a>
                                </table>
                                <span>————————————————————————————————————————————————————————————</span>
                            </ItemTemplate>
                        </asp:Repeater>
                        <!-- 一个盒子结束 -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script>
        //【切换】功能
        $(".new_link_nav a").click(function () {
            $(this).addClass("active").siblings("a").removeClass("active");
            //获取ID
            var index = $(this).index();
            // console.log(index);
            $(".upload_con div").eq(index).addClass("l_default").siblings("div").removeClass("l_default");
            if (index == 1) {
                $(".con_one_tong").css("display", "none");
                $(".con_one_zhuan").css("display", "block");
                $(".zhuan_one").css("display", "block");
            }
            else {
                $(".con_one_tong").css("display", "block");
                $(".con_one_zhuan").css("display", "none");
                $(".zhuan_one").css("display", "none");

            }
        });
        $(".con_one li").click(function () {
            $(this).addClass("one_active").siblings("li").removeClass("one_active");
            var index = $(this).index();
            // console.log(index);
            $(".con_one_tong div").eq(index).addClass("o_default").siblings("div").removeClass("o_default");
        });
        $(".con_two li").click(function () {
            $(this).addClass("two_active").siblings("li").removeClass("two_active");
            var index = $(this).index();
            // console.log(index);
            if (index == 0) {
                $(".zhuan_one").css("display", "block");
                $(".zhuan_two").css("display", "none");
                $(".zhuan_three").css("display", "none");
                $(".zhuan_four").css("display", "none");
            }
            else if (index == 1) {
                $(".zhuan_one").css("display", "none");
                $(".zhuan_two").css("display", "block");
                $(".zhuan_three").css("display", "none");
                $(".zhuan_four").css("display", "none");
            }
            else if (index == 2) {
                $(".zhuan_one").css("display", "none");
                $(".zhuan_two").css("display", "none");
                $(".zhuan_three").css("display", "block");
                $(".zhuan_four").css("display", "none");
            }
            else if (index == 3) {
                $(".zhuan_one").css("display", "none");
                $(".zhuan_two").css("display", "none");
                $(".zhuan_three").css("display", "none");
                $(".zhuan_four").css("display", "block");
            }
        });
    </script>
</asp:Content>
