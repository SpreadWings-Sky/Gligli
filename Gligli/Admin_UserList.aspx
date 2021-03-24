<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-index.Master" AutoEventWireup="true" CodeBehind="Admin_UserList.aspx.cs" Inherits="Gligli.Admin_UserList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:GridView ID="UserListGrid"  class="table table-bordered tables tables-striped tables-bordered tables-hover"  runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="8" OnPageIndexChanging="UserListGrid_PageIndexChanging" OnRowDeleting="UserListGrid_RowDeleting" OnRowCancelingEdit="UserListGrid_RowCancelingEdit" OnRowEditing="UserListGrid_RowEditing" OnRowUpdating="UserListGrid_RowUpdating" OnRowDataBound="UserListGrid_RowDataBound">
                                <Columns>
                                    <asp:BoundField DataField="userID" HeaderText="用户ID" ReadOnly="True" />
                                    <asp:BoundField DataField="userName" HeaderText="用户名" />
                                    <asp:TemplateField HeaderText="头像">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("imgUrl") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imgUrl") %>' style="max-width:50px;min-width:50px;min-height:50px;border-radius:50%"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Account" HeaderText="账号" ReadOnly="True" />
                                    <asp:BoundField DataField="sex" HeaderText="性别" ReadOnly="True" />
                                    <asp:BoundField DataField="Email" HeaderText="邮箱" ReadOnly="True" />
                                    <asp:BoundField DataField="Phone" HeaderText="手机" ReadOnly="True" />
                                    <asp:BoundField DataField="address" HeaderText="地址" ReadOnly="True" />
                                    <asp:BoundField DataField="Birt" HeaderText="生日" ReadOnly="True" />
                                    <asp:BoundField DataField="brief" HeaderText="简介" />
                                    <asp:BoundField DataField="regTime" HeaderText="注册时间" ReadOnly="True" />
                                    <asp:TemplateField HeaderText="权限/状态">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="State" runat="server" Text='<%# Bind("state") %>'>
                                                <asp:ListItem Value="gl">管理</asp:ListItem>
                                                <asp:ListItem Value="zc">正常</asp:ListItem>
                                                <asp:ListItem Value="fj">封禁</asp:ListItem>
                                            </asp:DropDownList>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("state") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="封禁" ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-danger" CausesValidation="False" CommandName="Delete" Text="封禁"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="修改" ShowHeader="False">
                                        <EditItemTemplate>
                                            <asp:LinkButton ID="UpBtn" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                                            <br>
                                            </br><asp:LinkButton ID="qxBTn" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                                        </ItemTemplate>
                                        <ControlStyle CssClass="btn btn-warning" />
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
