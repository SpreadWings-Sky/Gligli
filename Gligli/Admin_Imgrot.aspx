<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-index.Master" AutoEventWireup="true" CodeBehind="Admin_Imgrot.aspx.cs" Inherits="Gligli.Admin_Imgrot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-toolbar clearfix">
                        <div class="pull-right search-bar">
                            <div class="input-group">
                                <div class="input-group-btn">
                                    <asp:DropDownList ID="DropDownList2" CssClass="btn btn-default dropdown-toggle" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                        <asp:ListItem Value="0">全部</asp:ListItem>
                                        <asp:ListItem Value="1">主页</asp:ListItem>
                                        <asp:ListItem Value="2">动画</asp:ListItem>
                                        <asp:ListItem Value="3">音乐</asp:ListItem>
                                        <asp:ListItem Value="4">禁用</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="toolbar-btn-action">
                            <asp:LinkButton ID="ImgAddLike" class="btn btn-primary m-r-5" runat="server" OnClick="ImgAddLike_Click"><i class="mdi mdi-plus"></i>新增</asp:LinkButton>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating">
                                <Columns>
                                    <asp:BoundField DataField="ImgID" HeaderText="编号" ReadOnly="True" />
                                    <asp:TemplateField HeaderText="图片">
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" Style="min-width: 140px; max-width: 140px" ImageUrl='<%# Eval("ImgUrl") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="页面">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem Value="0">主页</asp:ListItem>
                                                <asp:ListItem Value="1">动画</asp:ListItem>
                                                <asp:ListItem Value="2">音乐</asp:ListItem>
                                            </asp:DropDownList>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Page") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Title" HeaderText="标题" />
                                    <asp:BoundField DataField="ImgLike" HeaderText="链接地址" />
                                    <asp:TemplateField HeaderText="禁用" ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-warning m-r-5" runat="server" CausesValidation="False" CommandName="Delete" Text=""><i class="mdi mdi-block-helper"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="修改" ShowHeader="False">
                                        <EditItemTemplate>
                                            <asp:LinkButton ID="UP" runat="server" class="btn btn-success" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="EX" class="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="Ed" CssClass="btn btn-primary m-r-5" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"><i class="mdi mdi-feather"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
