<%@ Page Title="" Language="C#" MasterPageFile="~/GliMS.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Gligli.Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/section.css" />
    <link rel="stylesheet" href="./css/index-footer.css" />
    <script src="js/jquery-3.3.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="margin-top: 30px; height: 100%;">
        <div id="section" class="grid">
            <div class="section-nav">
                <span>GliGli专栏</span>
                <ul>
                    <li><a href="Special.aspx" style="color: #00a1d6;">推荐</a></li>
                    <li><a href="Animation.aspx">动画</a></li>
                    <li><a href="Game.aspx">游戏</a></li>
                    <li><a href="Music.aspx">音乐</a></li>
                    <li><a href="LightFiction.aspx">轻小说</a></li>
                </ul>
            </div>
            <div class="section-tu">
                <asp:Repeater ID="spList" runat="server">
                    <ItemTemplate>
                        <dl class="news-item-s1">
                            <h1 style="margin-bottom:30px"><%# Eval("title") %></h1>
                            <%# Eval("spText") %>
                        </dl>
                    </ItemTemplate>
                </asp:Repeater>

                <h3>评论</h3>
                <div class="comment_outsize">
                    <table>
                        <tr>
                            <td>
                                <img id="Image" class="comment_photo" src="./img/ls.png" /></td>
                            <td>
                                <asp:TextBox ID="txtComment" runat="server" CssClass="comment_content" TextMode="MultiLine"></asp:TextBox></td>
                            <%--<td><asp:Button ID="btnFend" runat="server" CssClass="comment_send" Text="发表评论" OnClick="btnFend_Click"/></td>--%>
                        </tr>

                        <%--  循环输出对应的说说列表  --%>
                        <%-- <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            </div class="comment_in">
                                <table>
                                    <tr>
                                        <td rowspan="2"><img id="image" class="comment_photo" src="./img/video-img/<%# Eval("imageUrl") %>.png" /></td>
                                        <td class="comment_font"><%# Eval("userName") %></td>
                                    </tr>
                                    <tr>
                                        <td class="comment_color"><%# Eval("Comment") %></td>
                                    </tr>
                                </table>
                            </div> 
                        </ItemTemplate>
                    </asp:Repeater>--%>
                    </table>
                </div>
            </div>

            <div class="section-pai">
                <div id="section-pai">

                    <dl class="UsInfo">
                        <dt>
                            <img src='<%=Spe.ImageUrl%>' alt="" />
                            <span><%=Spe.UserName%></span>
                        </dt>
                        <dd>
                            <div style="margin-left: 55px; margin-top: -20px; font-size: 14px; color: #ccc;">
                                <span>粉丝：<%= Spe.Fs %></span><span>浏览量：<%= Spe.SpNumber%></span>
                            </div>
                        </dd>
                    </dl>

                    <asp:Button  CssClass="btn1" runat="server" Text="关注" />
                    <h3 style="margin-top: 20px">推荐文章</h3>
                    <div class="line"></div>
                    <asp:Repeater ID="Sptui" runat="server">
                        <ItemTemplate>
                            <a href="Details.aspx?id=<%# Eval("spID") %>">
                                <dl class="news-item-s" style="height: 30px; width: 220px">
                                    <dt>
                                        <img src='<%# Eval("pageimg")%>' alt="" style="width: 50px; height: 50px; float: right; border-radius: 5px;" />
                                    </dt>
                                    <dd>
                                        <p><%# Eval("spUrl").ToString().Substring(0,25) %>...</p>
                                    </dd>
                                </dl>
                            </a>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="lie-item">查看更多></div>
                    <div class="lie-up">
                        <h3>更多</h3>
                        <div class="line"></div>
                        <div class="lie-geng">
                            <a href="#">
                                <dl class="lie-up-s">
                                    <dt>
                                        <img src="./img/pictures/6.jpg" alt="" />
                                    </dt>
                                    <dd>
                                        <a href="#" style="font-size: 14px;">专栏投稿</a>
                                        <p style="margin-top: 10px;">
                                            前去写文章
                                        </p>
                                    </dd>
                                </dl>
                            </a>
                            <a href="#">
                                <dl class="lie-up-s">
                                    <dt>
                                        <img src="./img/pictures/7.jpg" alt="" />
                                    </dt>
                                    <dd>
                                        <a href="#" style="font-size: 14px;">专栏帮助</a>
                                        <p style="margin-top: 10px;">
                                            查看专栏说明
                                        </p>
                                    </dd>
                                </dl>
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <script>
            $(window).scroll(function () {
                var top = $(window).scrollTop();
                if (top > 0) {
                    $("#section-pai").css("position", "fixed");
                    $(".section-tu").css("margin-right", "20%");
                    $("#lie-up").css("display", "none");
                }
                else {
                    $("#section-pai").css("position", "initial");
                    $(".section-tu").css("margin-right", "0");
                    $("#lie-up").css("display", "block");
                }
            });
        </script>
    </section>
    <footer id="footer">
        <!-- 上半部分开始 -->
        <div class="footer-top grid">
            <div class="footer-top-left">
                <div class="left-item">
                    <h3>gligli</h3>
                    <ul>
                        <li><a href="javascript:void(0)">关于我们</a></li>
                        <li><a href="javascript:void(0)">加入我们</a></li>
                        <li><a href="javascript:void(0)">gligli认证</a></li>
                        <li><a href="javascript:void(0)">联系我们</a></li>
                        <li><a href="javascript:void(0)">友情链接</a></li>
                        <li><a href="javascript:void(0)">Inverstor Relations</a></li>
                    </ul>
                </div>
                <div class="left-item">
                    <h3>传送门</h3>
                    <ul>
                        <li><a href="javascript:void(0)">帮助中心</a></li>
                        <li><a href="javascript:void(0)">侵权申述</a></li>
                        <li><a href="javascript:void(0)">壁纸站</a></li>
                        <li><a href="javascript:void(0)">高级弹幕</a></li>
                        <li><a href="javascript:void(0)">活动中心</a></li>
                        <li><a href="javascript:void(0)">专车号服务中心</a></li>
                        <li><a href="javascript:void(0)">活动专题页</a></li>
                        <li><a href="javascript:void(0)">用户反馈论坛</a></li>
                        <li><a href="javascript:void(0)">名人堂</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-top-right">
                <ol>
                    <li><a href="javascript:void(0)">
                        <i class="fa fa-download" aria-hidden="true"></i>
                        <p>下载APP</p>
                    </a></li>
                    <li><a href="javascript:void(0)">
                        <i class="fa fa-weibo" aria-hidden="true"></i>
                        <p>新浪微博</p>
                    </a></li>
                    <li><a href="javascript:void(0)">
                        <i class="fa fa-weixin" aria-hidden="true"></i>
                        <p>官方微信</p>
                    </a></li>
                </ol>
            </div>
        </div>
        <!-- 上半部分结束 -->
        <!-- 下半部分开始 -->
        <div class="footer-bottom grid">
            <div class="footer-bottom-left grid-cell-2">
                <img src="./img/footer-img/bq1.png" alt="只有神知道的世界" />
                <img src="./img/footer-img/bq2.png" alt="darling" />
                <img src="./img/footer-img/bq3.png" alt="甘雨" />
                <span></span>
            </div>
            <div class="footer-bottom-right grid-cell-4">
                <p>
                    <span><a href="#">营业执照</a></span>
                    <span>信息网络传播视听节目许可证：6666666</span>
                    <span>网络文化经营许可证 沪网文【2077】4857-111号</span>
                    <span>广播电视节目制作经营许可证：（龍）字第00001号</span>
                    <span>增值电信业务经营许可证 龍A1-20770001</span>
                    <span>互联网ICP备案：<a href="#">龍ICP备10000111号-2</a></span>
                    <span>出版物经营许可证 龍批字第ZY2077 号</span>
                    <span>互联网药品信息服务资格证 龍-非经营性-2077-0101</span>
                    <span>营业性演出许可证 龍市文演（经）00-0102</span>
                </p>
                <p>违法不良信息举报邮箱：help@gligli.com |违法不良信息举报电话：4006262233转1</p>
                <p>
                    <i id="bg1"></i><a href="http://www.shjbzx.cn/">上海互联网举报中心 </a>|
                    <a href="http://jbts.mct.gov.cn/">12318全国文化市场举报网站</a>|
                    <i id="bg2"></i><a href="http://www.beian.gov.cn">龍公网安备2146897157985号</a>|
                    <a href="http://www.shdf.gov.cn/shdf/channels/740.html">打黄扫非举报</a>
                </p>
                <p>网上有害信息举报专区：<i id="bg3"></i><a href="https://www.12377.cn/">中国互联网违法和不良信息举报中心</a></p>
                <p>亲爱的市民朋友，上海警方反诈劝阻电话“96110”系专门针对避免您财产被骗受损而设，请您一旦收到来电，立即接听。</p>
                <p>公司名称：夜之城荒版科技有限公司|公司地址：夜之城市中心荒版塔|电话：010-010011001</p>
            </div>
        </div>
    </footer>
</asp:Content>
