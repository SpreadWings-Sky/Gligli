<%@ Page Title="" Language="C#" MasterPageFile="~/UserAdmin.Master" AutoEventWireup="true" CodeBehind="UserVideoComment.aspx.cs" Inherits="Gligli.UserVideoComment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/User_upVideo.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- 内容头部 -->
    <div class="upload_warp">
        <div class="new_link_top">
            <div class="new_link_nav">
                <a href="#" class="nav_item active">评论列表</a>
            </div>
            <!-- 内容主题 -->
            <div class="load_from">
                <!-- 盒子1的内容 -->
                <div class="con_one_tong">
                    <div class="one_one o_default">
                        <!-- 全部稿件 -->
                        <!-- 一个盒子开始 -->
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td rowspan="3">
                                            <img src='<%# Eval("VideoImg") %>' alt=""></td>
                                        <td><b><%# Eval("VideoTitle") %></b></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2"><%# Eval("UserName") %>说：<%# Eval("Comment") %></td>
                                    </tr>
                                    <ASP:LinkButton OnClientClick="javascript:return confirm('确认删除？')" CommandArgument=<%# Eval("comID") %> class="one_right" runat="server">删除</ASP:LinkButton>
                                </table>
                                <span>————————————————————————————————————————————————————————————</span>
                            </ItemTemplate>
                        </asp:Repeater>
                        <!-- 一个盒子结束 -->
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
