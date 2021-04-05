<%@ Page Title="" Language="C#" MasterPageFile="~/GliMS.Master" AutoEventWireup="true" CodeBehind="giligili.aspx.cs" Inherits="Gligli.giligili" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./Content/css/giligili.css" rel="stylesheet" />
    <script src="./Content/js/jquery-3.3.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="box2">

        <div class="box2-img">
            <div class="box-img">

                <div id="box-img-img">
                    <a href="modify.aspx">
                        <asp:Image ID="Image1" runat="server" />
                        <div class="live-box">更换头像</div>
                    </a>
                </div>

                <ul>
                    <li><a href="" style="color: #fb7299;">
                        <asp:Label ID="touxiang" runat="server" Text="Label"></asp:Label></a></li>
                    <li><a href="" style="font-size: 10px;">
                        <asp:Label ID="touxiang2" runat="server" Text="Label"></asp:Label></a></li>
                </ul>
            </div>

        </div>


        <div class="box2-1 grid">
            <ul class="box2-1 grid-cell-4">
                <li><a href="giligili.aspx">
                    <img src="./Content/img/m3.png" alt="">
                    主页</a></li>
                <li><a href="My video.aspx">
                    <img src="./Content/img/m11.png" alt="">
                    视频</a></li>
                <li><a href="UserUp.aspx">
                    <img src="./Content/img/m14.png" alt="">
                    投稿</a></li>
                <li><a href="follow.aspx">
                    <img src="./Content/img/m1.png" alt="">
                    关注</a></li>
                <li><a href="Collection.aspx">
                    <img src="./Content/img/m12.png" alt="">
                    收藏</a></li>
                <li><a href="special_column.aspx">
                    <img src="./Content/img/m10.png" alt="">
                    专栏</a></li>
                <li><a href="modify.aspx" target="iframe_a">
                    <img src="./Content/img/m10.png" alt="">
                    设置</a></li>
            </ul>
        </div>

    </div>




    <div class="col-1">
        <div class="col-1-1">
            <span id="col-1-span1" class="col-1-span1" onclick="span1()">我的粉丝会看到</span>
            <span class="col-1-span2" id="col-1-span2" onclick="span2()">新访客会看到</span>

        </div>
        <div class="list-create">

            <div class="create-covers-meta" id="create-covers-meta">
                <div class="icon"></div>
                <div class="text" id="col-text">设置置顶视频</div>
            </div>
            <img src="./Content/img/5.png" alt="" id="col-img">
        </div>

    </div>


    <div class="col-2">

        <h3 class="section-title">
            <a href="My video.aspx" class="t">我的视频</a>
            <asp:Repeater ID="GiligiliNum" runat="server">
                <ItemTemplate>
                    <span class="count"><%# Eval("num") %></span>
                </ItemTemplate>
            </asp:Repeater>

        </h3>

        <div class="col-2-img">
            <asp:Repeater ID="newsList" runat="server">
                <ItemTemplate>
                    <div class="col-2-img1">
                        <a href="#">
                            <img src="<%# Eval("bacImg") %>" alt=""><br>
                            <span><%# Eval("title")%></span>
                        </a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>



    </div>




    <div class="col-4">
        <div class="col-4-a">
            <a href="Collection.aspx" class="">我的收藏夹</a>
            <span style="font-size: 10px;">默认收藏夹</span>
        </div>
        <div class="col-4-img">
            <asp:Repeater ID="CollectionList" runat="server">
                <ItemTemplate>
                    <div class="col-4-img1">
                        <a href="#">
                            <img src="<%# Eval("bacImg") %>" alt="">
                        </a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>

    </div>

    <div class="col-3">
        <div class="col-3-a">
            <a href="special_column.aspx" class="">我的专栏</a>
        </div>

    </div>

    <div>
        <asp:Repeater ID="SpeInfo" runat="server">
            <ItemTemplate>
                <div class="content-list">
                    <div class="list-item">
                        <a href="#">
                            <h3><%# Eval("title") %></h3>
                            <div>
                                <span><%# Eval("userName") %></span>
                                <img src="<%# Eval("imageUrl") %>" alt="">
                                简介：     <%# Eval("brief") %>
                            </div>
                        </a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>


    <div class="col-6">

        <h2 class="section-title">
            <a href="" class="t" style="font-style: 30px;">最近点赞视频</a>
            <asp:Repeater ID="VideoLikeInfoNum" runat="server">
                <ItemTemplate>
                    <span class="count"><%# Eval("num") %> </span>
                </ItemTemplate>
            </asp:Repeater>

        </h2>
        <div class="col-6-img">
            <asp:Repeater ID="VideoLikeInfo" runat="server">
                <ItemTemplate>
                    <div class="col-2-img1">
                        <a href="#">
                            <img src="<%# Eval("bacImg") %>" alt=""><br>
                            <span><%# Eval("title") %></span>
                        </a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>



    </div>







    <script>

        function span1() {
            $("#col-1-span1").css("color", "#00a1d6");
            $("#col-text").text("设置置顶视频");
            $("#col-1-span2").css("color", "#000");
            $("#col-img").attr("src", "./Content/img/5.png");
        }
        function span2() {
            document.getElementById("col-1-span2").style.color = "#00a1d6";
            $("#col-text").text("设置代表作");
            $("#col-1-span1").css("color", "#000");
            $("#col-img").attr("src", "./Content/img/6.png");
        }



    </script>
</asp:Content>
