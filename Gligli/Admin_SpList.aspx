<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-index.Master" AutoEventWireup="true" CodeBehind="Admin_SpList.aspx.cs" Inherits="Gligli.Admin_SpList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:GridView id="SpList" class="table table-bordered tables tables-striped tables-bordered tables-hover" runat="server" AutoGenerateColumns="False" OnRowDeleting="SpList_RowDeleting" AllowPaging="True" OnPageIndexChanging="SpList_PageIndexChanging" OnRowCancelingEdit="SpList_RowCancelingEdit" OnRowEditing="SpList_RowEditing" OnRowUpdating="SpList_RowUpdating" PageSize="5">
                                <Columns>
                                    <asp:TemplateField HeaderText="编号">
                                        <EditItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("spID") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("spID") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="UserID" HeaderText="用户编号" ReadOnly="True" />
                                    <asp:BoundField DataField="Title" HeaderText="标题" />
                                    <asp:TemplateField HeaderText="封面">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("PageImg") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" style="min-width:117px;max-width:206px" ImageUrl='<%# Eval("PageImg") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="SpUrl" HeaderText="文章" />
                                    <asp:BoundField DataField="UpTime" HeaderText="上传时间" ReadOnly="True" />
                                    <asp:BoundField DataField="SpNumber" HeaderText="阅读数" ReadOnly="True" />
                                    <asp:BoundField DataField="State" HeaderText="状态" />
                                    <asp:TemplateField HeaderText="删除" ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-danger" CausesValidation="False" CommandName="Delete" Text="删除"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                        <EditItemTemplate>
                                            <asp:LinkButton ID="UpBtn" runat="server" CssClass="btn btn-dark" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="ArteBtn" CssClass="btn btn-info" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="CzBtn" CssClass="btn btn-warning" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
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
