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
                            <asp:GridView id="SpList" runat="server">

                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
