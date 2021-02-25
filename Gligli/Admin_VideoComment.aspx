<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-index.Master" AutoEventWireup="true" CodeBehind="Admin_VideoComment.aspx.cs" Inherits="Gligli.Admin_VideoComment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" class="table table-bordered tables tables-striped tables-bordered tables-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnDataBound="GridView1_DataBound" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" PageSize="9">
                                <Columns>
                                    <asp:BoundField DataField="comID" HeaderText="评论编号" ReadOnly="True" />
                                    <asp:BoundField DataField="VideoID" HeaderText="视频编号" ReadOnly="True" />
                                    <asp:BoundField DataField="userID" HeaderText="用户编号" ReadOnly="True" />
                                    <asp:BoundField DataField="Comment" HeaderText="评论" ReadOnly="True" />
                                    <asp:BoundField DataField="RecomID" HeaderText="回复评论id" ReadOnly="True" />
                                    <asp:BoundField DataField="zRecomID" HeaderText="主评论编号" ReadOnly="True" />
                                    <asp:CommandField HeaderText="删除" ShowDeleteButton="True">
                                    <ControlStyle CssClass="btn btn-danger" />
                                    </asp:CommandField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
