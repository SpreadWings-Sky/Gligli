<%@ Page Title="" Language="C#" MasterPageFile="~/UserAdmin.Master" AutoEventWireup="true" CodeBehind="UserUp.aspx.cs" Inherits="Gligli.UserUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/User_upVideoPage.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="upload_warp">
        <div class="new_link_top">
            <div class="new_link_nav">
                <a href="#" class="nav_item active">视频投稿</a>
                <a href="#" class="nav_item">专栏投稿</a>
            </div>
            <!-- 视频 -->
            <div class="videoup_warp">
                <div class="video_warp_content">
                    <div id="video-box">
                        <div class="Up_btn">
                            <div class="Up_btn_content">
                                <div class="file_list">
                                    <div class="file_title">
                                        <h1>文件上传</h1>
                                        <p>(推荐使用mp4)</p>
                                    </div>
                                    <div class="file_list_warp">
                                        <div class="file_list_item">
                                            <div class="file_item_ico">
                                                <span>p1</span>
                                            </div>
                                            <div class="file_item_warp">
                                                <div class="item_state_warp">
                                                    <span class="item-title">
                                                        <p>
                                                            [HYSUB]Kaifuku Jutsushi no
                                                                        Yarinaoshi[07][GB_MP4][1920X1080]
                                                        </p>
                                                    </span>
                                                    <div class="item-state-op">
                                                        <span>删除</span>
                                                        <i class="item-state-op-ico"></i>
                                                    </div>
                                                </div>
                                                <div class="item_upload_info">
                                                    <span>上传完成</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="div-line"></div>
                                </div>
                                <div class="file-content">
                                    <div class="file-content-title">
                                        <h1>基本信息</h1>
                                    </div>
                                    <!-- 封面 -->
                                    <div class="file-content-img">
                                        <div class="img-title">
                                            <h3>视频封面设置</h3>
                                            <p>（格式jpeg、png，文件大小≤5MB，建议尺寸≥1146*717，最低尺寸≥960*600）</p>
                                        </div>
                                        <div class="img-up">
                                            <img src="./img/banner.jpg" alt="">
                                        </div>
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
                                                    <input type="text" maxlength="80" placeholder="请输入稿件标题">
                                                </div>
                                                <p>0/80</p>
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
                                                <div class="type-list-select">
                                                    <p>动画</p>
                                                </div>
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
                                                <textarea class="desc-text"></textarea>
                                                <p>0/200</p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 投稿 -->
                                    <div class="video-up-btn">
                                        <a href="#">立即投稿</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 专栏 -->
            <div class="Sp-up-warp" style="display: none;">
                <div class="editor-warp">
                    <div class="editor-origial">
                        <div class="editor-title-box">
                            <div class="editor-box-warp">
                                <div class="editor-box-title">
                                    <textarea maxlength="80" placeholder="请输入标题（建议30字以内）"
                                        style="overflow-y: hidden; height: 64px;"></textarea>
                                </div>
                                <div id="editorbox" style="z-index:999;">

                                </div>
                            </div>
                        </div>
                        <div class="block-warp">
                            <h3 class="block-title">请选择专栏分类</h3>
                            <div class="block-class">
                                <select name="" id="type">
                                    <option value="">动画</option>
                                    <option value="">游戏</option>
                                    <option value="">影视</option>
                                    <option value="">兴趣</option>
                                    <option value="">轻小说</option>
                                    <option value="">科技</option>
                                </select>
                            </div>
                        </div>
                        <div class="bolock-warp">
                            <h3 class="block-title">请设置专栏封面</h3>
                            <div class="block-img">
                                <a href="#">+</a>
                                <img src="./img/banner.jpg" alt="">
                            </div>
                        </div>
                        <div class="sp-up-btn">
                            <a href="#"><span>提交文章</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
    <script type="text/javascript" src="https://unpkg.com/wangeditor/dist/wangEditor.min.js"></script>
    <script type="text/javascript">
        const E = window.wangEditor
        const editor = new E(document.getElementById('editorbox') )
        editor.create()
    </script>
</asp:Content>
