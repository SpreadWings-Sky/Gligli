<%@ Page Title="" Language="C#" MasterPageFile="~/UserAdmin.Master" AutoEventWireup="true" CodeBehind="UserFsGerList.aspx.cs" Inherits="Gligli.UserFsGerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="./css/User_upVideoPage.css" />
    <script type="text/javascript" src="./js/Chart.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="upload_warp">
        <div class="new_link_top">
            <div class="new_link_nav">
                <a href="javascript:void(0)" class="nav_item active">粉丝数据</a>
            </div>
            <!-- 视频 -->
            <div class="videoup_warp">
                <div class="video_warp_content">
                    <div id="video-box">
                        <div class="Up_btn">
                            <div class="Up_btn_content">
                                <div class="file_list">
                                    <div class="file_title">
                                        <h1 style="color: #00a1d6">粉丝总数:</h1>
                                        <p><%= Count %></p>
                                    </div>
                                    <div class="div-line"></div>
                                </div>
                                <div class="file-content">
                                    <div class="file-content-title">
                                        <h1>粉丝变化</h1>
                                    </div>
                                    <div style="width:100%">
                                        <canvas id="chart-line-2"></canvas>
                                    </div>
                                    <script>
                                        new Chart($("#chart-line-2"), {
                                            type: 'line',
                                            data: {
                                                labels: ["周一", "周二", "周三", "周四","周五","周六","周日"],
                                                datasets: [{
                                                    label: "粉丝数",
                                                    fill: false,
                                                    borderWidth: 3,
                                                    pointRadius: 5,
                                                    borderColor: "#9966ff",
                                                    pointBackgroundColor: "#9966ff",
                                                    pointBorderColor: "#9966ff",
                                                    pointHoverBackgroundColor: "#fff",
                                                    pointHoverBorderColor: "#9966ff",
                                                    data: [<%= Number%>]
                                                }]
                                            },
                                            options: {
                                                legend: {
                                                    display: false
                                                },
                                            }
                                        });
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
