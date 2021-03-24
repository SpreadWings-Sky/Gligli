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
                            <asp:GridView ID="GridView1" runat="server" class="table table-bordered tables tables-striped tables-bordered tables-hover" AutoGenerateColumns="False" AllowPaging="True" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnDataBound="GridView1_DataBound" OnRowDataBound="GridView1_RowDataBound">
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
                                            <asp:Label ID="Label1" runat="server" Style="display: none" Text='<%# Bind("VideoUrl") %>'></asp:Label>
                                            <asp:LinkButton ID="videplay" runat="server" CssClass="VideoPlay btn btn-label btn-info" OnClick="videplay_Click"><label><i class="mdi mdi-play-circle-outline"></i></label> 播放</asp:LinkButton>
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
                                    <asp:TemplateField HeaderText="状态">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="State" runat="server" Text='<%# Bind("State") %>'>
                                                <asp:ListItem Value="审核">审核</asp:ListItem>
                                                <asp:ListItem Value="正常">正常</asp:ListItem>
                                                <asp:ListItem Value="驳回">驳回</asp:ListItem>
                                            </asp:DropDownList>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True">
                                        <ControlStyle CssClass="btn btn-danger" />
                                    </asp:CommandField>
                                    <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                        <EditItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                                        </ItemTemplate>
                                        <ControlStyle CssClass="btn btn-warning" />
                                    </asp:TemplateField>
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
