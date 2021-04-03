<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-index.Master" AutoEventWireup="true" CodeBehind="ImgFileUp.aspx.cs" Inherits="Gligli.ImgFileUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">

        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="tab-content">
                        <div class="edit-form">
                            <div class="form-group">
                                <label for="web_site_title">图片标题</label>
                                <asp:TextBox runat="server" class="form-control" type="text" ID="TitleText" name="web_site_title" placeholder="请输入标题"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="web_site_logo">轮播图</label>
                                <div class="input-group">
                                    <asp:FileUpload runat="server" class="btn form-control btn-default" type="button" ID="Upurl"></asp:FileUpload>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="web_site_keywords">跳转链接</label>
                                <asp:TextBox runat="server" class="form-control" type="text" ID="LikeUrl" name="web_site_keywords" placeholder="请输入跳转链接"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="web_site_copyright">归属页面</label>
                                <asp:DropDownList ID="PageSelect" runat="server" class="form-control" DataTextField="TypeName" DataValueField="TypeName">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:Button  ID="UpBtn" runat="server" class="btn btn-primary m-r-5" Text="确认" OnClick="UpBtn_Click" />
                                <asp:Button ID="RegBtn" runat="server" Text="返回" class="btn btn-default" OnClick="RegBtn_Click"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
