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
                            <h1><%# Eval("title") %></h1>
                            <%# Eval("spText") %>
                        </dl>
                    </ItemTemplate>
                </asp:Repeater>
                    
                       <%-- <%--  循环输出对应的说说列表  --%>
                         <div class="content-commentbox">
                        <h3><span><%=Session["ComCount"] %></span>   评论</h3>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <div class="commentbox-header">
                            <ul>
                                <asp:LinkButton ID="LinkButton1" data-type="likeNum" runat="server" OnClick="LinkButton1_Click"><li  class="commentbox-active" >按热度排序</li></asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" data-type="comTime" runat="server" OnClick="LinkButton2_Click"><li>按时间排序</li></asp:LinkButton>
                            </ul>
                        </div>
                        <div class="commentbox-send">
                            <div class="user-head">
                                <img src="./img/akari.jpg" width="48" height="48" alt="" />
                            </div>
                            <div class="commentbox-container">
                                <asp:TextBox ID="RcomID" Style="display: none" runat="server"></asp:TextBox>
                                <%if (int.Parse(Session["LoginUserID"].ToString()) == 0)
                                    { %>
                                <div style="text-align: center; height: 55px; width: 108%; line-height: 55px; background: #ccc; margin: 0 auto; border-radius: 10px;">
                                    <a href="Login.aspx">请登录 </a>
                                </div>
                                <%}
                                    else
                                    { %>
                                <asp:TextBox ID="sendbox" runat="server" name="1" class="commentbox-text" cols="80" placeholder="发条友善的评论" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                <asp:Button ID="Button3" CssClass="commentbox-btn" runat="server" Text="发表"  OnClick="Button3_Click"/>
                                <%} %>
                            </div>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>

                                <div class="commentbox-list">
                                    <div id="likebox">
                                        <%if (list.Count < 1)
                                            { %>
                                        <div style="height: 150px; line-height: 150px; text-align: center">
                                            <h1>暂时还没有评论，快抢沙发吧！</h1>
                                        </div>
                                        <% }%>
                                        <%else
                                            { %>
                                        <%foreach (var item in list)
                                            {%>
                                        <div class='commentbox-listitem' data-id="<%=item.userID %>">
                                            <div class='listitem-head'>
                                                <a href='?userid=<%=item.userID%>'>
                                                    <img src='<%=item.imageUrl %>' width='48' height='48' />
                                                </a>
                                            </div>
                                            <div class='commentbox-con'>
                                                <div class='user'><a href='#'><%=item.userName %></a></div>
                                                <p><%=item.Comment %></p>
                                                <div class='info'>
                                                    <span class='time'><%=item.comtime %></span>
                                                    <span onclick="LikeCl(this)" data-comid="<%=item.comID %>" class='like'><i class='fa fa-thumbs-o-up' aria-hidden='true'></i>
                                                        <span class="likenum"><%=item.likeNum %></span>
                                                    </span>
                                                    <span onclick="unLikeCl(this)" data-comid="<%=item.comID %>" class='unlike'><i class='fa fa-thumbs-o-down' aria-hidden='true'></i></span>
                                                    <span class='reply' onclick="reply(this)" data-ruserid="<%=item.comID %>" data-reply='<%=item.userName %>'>回复</span>
                                                    <span class='spot'><i class='fa fa-ellipsis-v' aria-hidden='true'></i></span>
                                                </div>
                                                <div class='reply-box'>
                                                    <%foreach (var value in dic[item.comID])
                                                        {%>
                                                    <div class='reply-item'>
                                                        <a href='#' class='reply-head'>
                                                            <img src='<%=value.imageUrl%>' width='24' height='24' /></a>
                                                        <div class='reply-item__user'>
                                                            <a href='<%=value.userID%>' class='name'><%=value.userName%></a>
                                                            <span class='reply-text'><%=value.Comment %></span>
                                                        </div>
                                                        <div class='reply-item__info'>
                                                            <div class='info'>
                                                                <span class='time'><%=value.comtime%></span>
                                                                <span onclick="LikeCl(this)" data-comid="<%=value.comID %>" class='like'>
                                                                    <i class='fa fa-thumbs-o-up' aria-hidden='true'></i>
                                                                    <span class="likenum"><%=value.likeNum%></span>
                                                                </span>
                                                                <span onclick="unLikeCl(this)" data-comid="<%=value.comID %>" class='unlike'><i class='fa fa-thumbs-o-down' aria-hidden='true'></i></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%}%>
                                                </div>
                                            </div>
                                        </div>
                                        <%}%>
                                        <%}%>
                                    </div>
                                    <asp:Button ID="Button2" Style="display: none" runat="server" Text="Button" />
                                </div>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="LinkButton1" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="LinkButton2" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="num" EventName="TextChanged" />
                                <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
                            </Triggers>
                        </asp:UpdatePanel>
                        <div id="commentbox-bottom">
                            <div class="commentbox-bottom">
                                <ul id="dark-pagination" class="pagination">
                                </ul>
                                <div class="jump">共<label class="bottom-num"><%=Session["Count"]%></label>页,当前第<asp:TextBox ID="num" runat="server" ReadOnly="True"></asp:TextBox>页</div>
                            </div>
                            <div class="commentbox-send">
                                <div class="user-head">
                                    <img src="./img/akari.jpg" width="48" height="48" alt="" />
                                </div>
                            </div>
                        </div>

                        <script>
                            function reply(obj) {
                                var a = <%=int.Parse(Session["LoginUserID"].ToString())%>
                                   if (a == 0) {
                                    if (confirm("未登录！是否前往登录？")) {
                                        location.href = "Login.aspx"
                                        return false;
                                    }
                                    else {
                                        return false;
                                    }
                                }
                                else {
                                    $(".commentbox-text").attr("placeholder", $(obj).data("reply") + ":");
                                    $("#RcomID").val($(obj).data("ruserid"))
                                }
                            }
                            $('#dark-pagination').pagination({
                                pages: <%=Session["Count"]%>,
                                cssStyle: 'dark-theme',
                                displayedPages: 5,
                                edges: 1
                            });
                            function LikeCl(obj) {
                                if (!($(obj).find("i").hasClass("content-likeboxcolor"))) {
                                    $(obj).find("i").addClass("content-likeboxcolor")
                                    var num = parseInt($(obj).find("span").text()) + 1;
                                    if (($(obj).next().find("i").hasClass("content-likeboxcolor"))) {
                                        $(obj).next().find("i").removeClass("content-likeboxcolor")
                                        num = num + 1;
                                    }
                                    var comid = $(obj).data("comid")
                                    Like(num, comid)
                                    $(obj).find("span").text(num)
                                }
                                else {
                                    $(obj).find("i").removeClass("content-likeboxcolor")
                                    var num = parseInt($(obj).find("span").text()) - 1;
                                    var comid = $(obj).data("comid")
                                    Like(num, comid)
                                    $(obj).find("span").text(num)
                                }
                            }
                            function unLikeCl(obj) {
                                if (!($(obj).find("i").hasClass("content-likeboxcolor"))) {
                                    $(obj).find("i").addClass("content-likeboxcolor")
                                    var num = parseInt($(obj).prev("span").find("span").text()) - 1
                                    if (($(obj).prev().find("i").hasClass("content-likeboxcolor"))) {
                                        $(obj).prev().find("i").removeClass("content-likeboxcolor")
                                        num = num - 1;
                                    }
                                    var comid = $(obj).data("comid")
                                    Like(num, comid)
                                    $(obj).prev("span").find("span").text(num)
                                }
                                else {
                                    $(obj).find("i").removeClass("content-likeboxcolor")
                                    var num = parseInt($(obj).prev("span").find("span").text()) + 1
                                    var comid = $(obj).data("comid")
                                    Like(num, comid)
                                    $(obj).prev("span").find("span").text(num)
                                }
                            }
                            function Like(num, comid) {
                                $.ajax({
                                    type: "POST",
                                    async: true,
                                    url: "video-playback.aspx/Like",    //必须是后台的静态方法
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    data: "{'num':'" + num + "','SpID':'<%=Request.QueryString["id"]%>','comID':'" + comid + "'}",
                                    beforeSend: function () {

                                    }
                                });
                            }
                            $(".introduce-btn").click(function () {
                                if ($(this).find("span").text() == "展开更多") {
                                    $(".video-introduce").css("height", "auto")
                                    $(this).find("span").text("收起")
                                }
                                else {
                                    $(".video-introduce").css("height", "63px")
                                    $(this).find("span").text("展开更多")
                                }
                            })
                            $(".commentbox-header").find("a").click(function () {
                                $(this).find("li").addClass("commentbox-active").parent().siblings("a").find("li").removeClass("commentbox-active")
                                $('#dark-pagination').pagination({
                                    pages: <%=Session["Count"]%>,
                                    cssStyle: 'dark-theme',
                                    displayedPages: 5,
                                    edges: 1
                                });
                                indexR(1)
                                $("#num").val(1);
                            })
                        </script>
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

                    <asp:Button CssClass="btn1" runat="server" Text="关注" />
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
