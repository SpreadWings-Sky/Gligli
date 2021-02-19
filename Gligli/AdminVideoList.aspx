<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-index.Master" AutoEventWireup="true" CodeBehind="AdminVideoList.aspx.cs" Inherits="Gligli.AdminVideoList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" class="table table-bordered tables tables-striped tables-bordered tables-hover" AutoGenerateColumns="False" AllowPaging="True" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                                <Columns>
                                    <asp:BoundField DataField="UserID" HeaderText="用户ID" ReadOnly="True" />
                                    <asp:BoundField DataField="Title" HeaderText="标题" />
                                    <asp:BoundField DataField="VideoID" HeaderText="序号" ReadOnly="True" />
                                    <asp:BoundField DataField="Duction" HeaderText="简介" />
                                    <asp:BoundField DataField="VideoPlay" HeaderText="播放数" />
                                    <asp:BoundField DataField="type" HeaderText="分类" />
                                    <asp:BoundField DataField="barrageUrl" HeaderText="弹幕" />
                                    <asp:TemplateField HeaderText="视频">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("VideoUrl") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Style="display: none" Text='<%# Bind("VideoUrl") %>'>
                                                 
                                            </asp:Label>
                                            <asp:LinkButton ID="videplay" runat="server" CssClass="VideoPlay" OnClick="videplay_Click">播放</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="封面">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("bacimg") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" CssClass="imgs" runat="server" Style="min-width: 143px; max-width: 143px" ImageUrl='<%# Eval("bacimg") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Uptime" HeaderText="更新时间" ReadOnly="True" />
                                    <asp:BoundField DataField="State" HeaderText="状态">
                                        <ItemStyle CssClass="text-success" />
                                    </asp:BoundField>
                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True">
                                        <ControlStyle CssClass="btn btn-danger" />
                                    </asp:CommandField>
                                    <asp:CommandField HeaderText="操作" ShowEditButton="True">
                                        <ControlStyle CssClass="btn btn-warning" />
                                    </asp:CommandField>
                                </Columns>
                                <PagerSettings Mode="NumericFirstLast" />
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
