<%@ Page Title="" Language="C#" MasterPageFile="~/GliMS.Master" AutoEventWireup="true" CodeBehind="Collection column.aspx.cs" Inherits="Gligli.Collection_column" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./Content/css/special_column.css">
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
            </ul>
        </div>
    </div>

    <div class="col-1">
        <div class="col-1-img" style="overflow: auto;">
            <h2><font face="微软雅黑" size="5px" style="margin-left: 20px;" color="#3333FF">收藏的专栏</font></h2>
        </div>
    </div>


    <div class="DataList">
        <asp:DataList ID="DataList1" runat="server">
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
        </asp:DataList>
        <form runat="server">
            <div class="col-3">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button2" runat="server" Text="上一页" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="下一页" OnClick="Button3_Click" />
            </div>
        </form>
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

        function box2() {
            $("#box2-img").attr("src", "./Content/img/无用/aaa.png");
        }
        function box2_1() {
            $("#box2-img").attr("src", "./Content/img/无用/aa.png");
        }


    </script>
</asp:Content>
