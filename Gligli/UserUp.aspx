<%@ Page Title="" Language="C#" MasterPageFile="~/UserAdmin.Master" AutoEventWireup="true" CodeBehind="UserUp.aspx.cs" Inherits="Gligli.UserUp"  ValidateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/User_upVideoPage.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="upload_warp">
        <div class="new_link_top">
            <div class="new_link_nav">
                <a href="javascript:void(0)" class="nav_item active">视频投稿</a>
                <a href="javascript:void(0)" class="nav_item">专栏投稿</a>
            </div>
            <!-- 视频 -->
            <div class="videoup_warp" id="VideoBox" runat="server">
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
                                            <asp:FileUpload ID="Video_up" runat="server" />  
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
                                            <asp:FileUpload ID="VideoPage_up" runat="server" />
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
                                                    <asp:TextBox ID="Video_title" maxlength="80" placeholder="请输入稿件标题" runat="server"></asp:TextBox>
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
                                        <asp:LinkButton ID="VideoUp_btn" OnClick="VideoUp_btn_Click" runat="server">立即投稿</asp:LinkButton>
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
                                <div id="editorbox" style="z-index: 999;">
                                    <!-- 加载编辑器的容器 -->
                                    <script id="container" name="content" type="text/plain">  
                                    </script>
                                    <!-- 配置文件 -->
                                    <script type="text/javascript" src="/Content/ueditor/ueditor.config.js"></script>
                                    <!-- 编辑器源码文件 -->
                                    <script type="text/javascript" src="/Content/ueditor/ueditor.all.js"></script>
                                    <!-- 实例化编辑器 -->
                                    <script type="text/javascript">
                                        var ue = UE.getEditor('container',{
                                            initialFrameHeight: 400,
                                        });
                                    </script>
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
                        <div class="bolock-warp">
                            <h3 class="block-title">请设置专栏封面</h3>
                            <div class="block-img">
                                <asp:FileUpload ID="SpeImgUp" runat="server" />
                            </div>
                        </div>
                        <div class="sp-up-btn">
                            <asp:LinkButton ID="UpSpe_btn" OnClick="UpSpe_btn_Click" runat="server"><span>提交文章</span></asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
