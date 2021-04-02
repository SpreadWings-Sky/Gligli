<%@ Page Title="" Language="C#" MasterPageFile="~/GliMS.Master" AutoEventWireup="true" CodeBehind="TA.aspx.cs" Inherits="Gligli.TA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./Content/css/giligili.css" rel="stylesheet" />
    <script src="./Content/js/jquery-3.3.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="box2">

        <div class="box2-img">
            <div class="box-img">

                <div id="box-img-img">
                    <a href="#">
                        <asp:Image ID="Image1" runat="server" />
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
                <li><a href='TA.aspx?UserID=<%=Request["UserID"] %>' class="box2-1-a" id="con" onmouseover="overShow()" onmouseout="outHide()">
                    <img src="./Content/img/m3.png" alt="">
                    主页</a></li>
                <li><a href='TA video.aspx?UserID=<%=Request["UserID"] %>'>
                    <img src="./Content/img/m11.png" alt="">
                    视频</a></li>
                <li><a href='TA special_column.aspx?UserID=<%=Request["UserID"] %>'>
                    <img src="./Content/img/m10.png" alt="">
                    专栏</a></li>
            </ul>
        </div>

    </div>
    <div class="col-2">

        <h3 class="section-title">
            <a href="TA video.aspx" class="t">TA的视频</a>
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
                        <a href='video-playback.aspx?VideoID=<%# Eval("videID") %>'>
                            <img src="<%# Eval("bacImg") %>" alt=""><br>
                            <span><%# Eval("title")%></span>
                        </a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>



    </div>






    <div class="col-3">
        <div class="col-3-a">
            <a href="TA special_column.aspx" class="">TA的专栏</a>
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
