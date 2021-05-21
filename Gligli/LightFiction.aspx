<%@ Page Title="" Language="C#" MasterPageFile="~/GliMS.Master" AutoEventWireup="true" CodeBehind="LightFiction.aspx.cs" Inherits="Gligli.LightFiction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/section.css" />
    <script src="js/jquery-3.3.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="margin-top: 30px;">
        <div id="section" class="grid">
            <div class="section-nav">
                <div id="section-nav">
                    <span>GliGli专栏</span>
                    <ul>
                        <li><a href="Special.aspx">推荐</a></li>
                        <li><a href="Animation.aspx">动画</a></li>
                        <li><a href="Game.aspx">游戏</a></li>
                        <li><a href="Music.aspx">音乐</a></li>
                        <li><a href="LightFiction.aspx" style="color: #00a1d6;">轻小说</a></li>
                    </ul>
                </div>
            </div>
            <script>
                $(window).scroll(function () {
                    var top = $(window).scrollTop();
                    if (top > 60) {
                        $("#section-nav").css("top", "20px");
                    }
                    else {
                        $("#section-nav").css("top", "80px");
                    }
                });
            </script>
            <div class="section-tu">

                <div class="news-item">
                    <h2 style="text-align:center">轻小说文章</h2>
                    <asp:Repeater ID="spList" runat="server">
                        <ItemTemplate>
                            <a href="Details.aspx?id=<%# Eval("spID") %>">
                                <dl class="news-item-s">
                                    <dt>

                                        <img src='<%# Eval("pageimg")%>' alt="" />
                                    </dt>
                                    <dd>
                                        <span><%# Eval("title")%></span>
                                        <br>
                                        <p><%# Eval("spUrl").ToString().Substring(0,100) %></p>
                                        <p style="margin-top: 10px;"><a href="#">
                                            <img src='<%# Eval("imageUrl")%>' alt="" style="width: 20px; height: 20px; float: left; border-radius: 50%" /><%# Eval("userName")%></a> <a href="#"><%#Eval("partition") %></a></p>
                                    </dd>
                                </dl>
                            </a>
                            <div class="lines"></div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>

            <div class="section-pai">
                <div id="section-pai">
                    <input type="text" id="txt" />
                    <input type="button" value="搜索" id="btn" />
                    <ul>
                        排行榜&nbsp;&nbsp;&nbsp;&nbsp; 
                    <li>昨天</li>
                        <li>前天</li>
                        <li>周榜</li>
                        <li>月榜</li>
                    </ul>
                    <div class="line"></div>
                          <div class="lie">
                        <div>
                            <asp:Repeater ID="Ranlist" runat="server">
                                <ItemTemplate>
                                    <p title="<%# Eval("Yest").ToString().Length>15?Eval("Yest").ToString().Substring(0,15):Eval("Yest").ToString()%>">
                                        <span><%# Eval("id")%></span><%# Eval("Yest").ToString().Length>15?Eval("Yest").ToString().Substring(0,15):Eval("Yest").ToString()%>
                                    </p>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div>
                            <asp:Repeater ID="Ranlist1" runat="server">
                                <ItemTemplate>
                                    <p title="<%# Eval("Theday").ToString().Length>15?Eval("Theday").ToString().Substring(0,15):Eval("Theday").ToString()%>">
                                        <span><%# Eval("id")%></span><%# Eval("Theday").ToString().Length>15?Eval("Theday").ToString().Substring(0,15):Eval("Theday").ToString()%>
                                    </p>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div>
                            <asp:Repeater ID="Ranlist2" runat="server">
                                <ItemTemplate>
                                    <p title="<%# Eval("Welist").ToString().Length>15?Eval("Welist").ToString().Substring(0,15):Eval("Welist").ToString()%>">
                                        <span><%# Eval("id")%></span><%# Eval("Welist").ToString().Length>15?Eval("Welist").ToString().Substring(0,15):Eval("Welist").ToString()%>
                                    </p>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div>
                            <asp:Repeater ID="Ranlist3" runat="server">
                                <ItemTemplate>
                                    <p title="<%# Eval("Molist").ToString().Length>15?Eval("Molist").ToString().Substring(0,15):Eval("Molist").ToString()%>">
                                        <span><%# Eval("id")%></span><%# Eval("Molist").ToString().Length>15?Eval("Molist").ToString().Substring(0,15):Eval("Molist").ToString()%>
                                    </p>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <div class="lie-item">查看完整榜单></div>
                    <div class="lie-up">
                        <div id="lie-up">
                            <div class="lie-box">
                                最新投稿GP主&nbsp;&nbsp;&nbsp;
                        <span><a href="#">&nbsp;&nbsp;更新&nbsp;&nbsp;</a></span>
                            </div>
                            <div class="line"></div>
                            <asp:Repeater ID="UserInfo" runat="server">
                                <ItemTemplate>
                                    <a href="#">
                                        <dl class="lie-up-s">
                                            <dt>
                                                <img src='<%# Eval("imgUrl") %>' alt="" />
                                            </dt>
                                            <dd>
                                                <a href="#" style="font-size: 14px;"><%# Eval("userName") %></a>
                                                <span><a href="#">&nbsp;&nbsp;关注&nbsp;&nbsp;</a></span>
                                                <br>
                                                <p style="margin-top: 10px;">
                                                    刚刚投稿了&nbsp;关于原神1.3海灯节活动攻略
                                                </p>
                                            </dd>
                                        </dl>
                                    </a>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
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
            $(function () {
                $(".section-pai li").each(function (index) {
                    $(this).mouseover(function () {
                        $(".section-pai li").each(function (i) {
                            $(this).removeClass("bian")
                            $(".lie div").eq(i).hide();
                        })
                        $(this).addClass("bian");
                        $(".lie div").eq(index).show();
                    });
                });
            });

            $(window).scroll(function () {
                var top = $(window).scrollTop();
                if (top > 500) {
                    $("#section-pai").css("position", "fixed");
                    $("#lie-up").css("display", "none");
                }
                else {
                    $("#section-pai").css("position", "initial");
                    $("#lie-up").css("display", "block");
                }
            });
        </script>
    </section>
</asp:Content>
