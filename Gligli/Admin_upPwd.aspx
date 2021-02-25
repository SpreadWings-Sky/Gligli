<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-index.Master" AutoEventWireup="true" CodeBehind="Admin_upPwd.aspx.cs" Inherits="Gligli.Admin_upPwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="site-form">
                            <div class="form-group">
                                <label for="old-password">旧密码</label>
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" class="form-control" placeholder="输入账号的原登录密码"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="new-password">新密码</label>
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" class="form-control" placeholder="输入新密码"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="confirm-password">确认新密码</label>
                                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" class="form-control" placeholder="确认新密码"></asp:TextBox>
                            </div>
                            <asp:Button ID="UpPwdBtn" runat="server" class="btn btn-primary" OnClick="UpPwdBtn_Click" Text="修改密码"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
