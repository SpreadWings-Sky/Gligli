<%@ Page Title="" Language="C#" MasterPageFile="~/UserAdmin.Master" AutoEventWireup="true" CodeBehind="UserEditWeb.aspx.cs" Inherits="Gligli.UserEditWeb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/User_upVideoPage.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="upload_warp">
        <div class="new_link_top">
            <div class="new_link_nav">
                <a href="javascript:void(0)" class="nav_item active" id="Video_item" runat="server">视频投稿</a>
                <a href="javascript:void(0)" class="nav_item active" id="Spe_item" runat="server">专栏投稿</a>
            </div>
            <!-- 视频 -->
            <div class="videoup_warp" id="VideoBox" runat="server">
                <div class="video_warp_content">
                    <div id="video-box">
                        <div class="Up_btn">
                            <div class="Up_btn_content">
                                <div class="file-content">
                                    <div class="file-content-title">
                                        <h1>基本信息</h1>
                                    </div>
                                    <!-- 标题 -->
                                    <div class="file-title">
                                        <div class="section-content">
                                            <p>*</p>
                                            <h3>标题</h3>
                                        </div>
                                        <div class="content-input">
                                            <div class="input-box">
                                                <div class="ipnut-box-inster">
                                                    <asp:TextBox ID="Video_title" MaxLength="80" placeholder="请输入稿件标题" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 分区 -->
                                    <div class="file-title">
                                        <div class="section-content">
                                            <p>*</p>
                                            <h3>分区</h3>
                                        </div>
                                        <div class="type-list">
                                            <div class="type-list-box">
                                                <asp:DropDownList ID="Video_typelist" runat="server" DataTextField="TypeName" DataValueField="TpID"></asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 简介 -->
                                    <div class="file-title">
                                        <div class="section-content">
                                            <h3>简介</h3>
                                        </div>
                                        <div class="content-desc-text">
                                            <div class="content-desc-box">
                                                <asp:TextBox ID="Video_desc" class="desc-text" TextMode="MultiLine" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 投稿 -->
                                    <div class="video-up-btn">
                                        <asp:LinkButton ID="VideoUp_btn" OnClick ="VideoUp_btn_Click" runat="server">修改</asp:LinkButton>
                                        <a href="UserAdminPage.aspx">取消</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 专栏 -->
            <div class="Sp-up-warp" style="display: none;" id="SpeBox" runat="server">
                <div class="editor-warp">
                    <div class="editor-origial">
                        <div class="editor-title-box">
                            <div class="editor-box-warp">
                                <div class="editor-box-title">
                                    <asp:TextBox ID="Spe_Title" TextMode="MultiLine" MaxLength="80" placeholder="请输入标题（建议30字以内）"
                                        Style="overflow-y: hidden; height: 64px;" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="block-warp">
                            <h3 class="block-title">请选择专栏分类</h3>
                            <div class="block-class">
                                <asp:DropDownList ID="SpeTypeList" runat="server">
                                    <asp:ListItem Value="动画">动画</asp:ListItem>
                                    <asp:ListItem Value="游戏">游戏</asp:ListItem>
                                    <asp:ListItem Value="影视">影视</asp:ListItem>
                                    <asp:ListItem Value="兴趣">兴趣</asp:ListItem>
                                    <asp:ListItem Value="轻小说">轻小说</asp:ListItem>
                                    <asp:ListItem Value="科技">科技</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="sp-up-btn">
                            <asp:LinkButton ID="UpSpe_btn" OnClick="UpSpe_btn_Click" runat="server"><span>修改</span></asp:LinkButton>
                            <a href="UserAdminPage.aspx"><span>取消</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
