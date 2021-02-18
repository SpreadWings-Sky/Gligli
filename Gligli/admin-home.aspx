<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-index.Master" AutoEventWireup="true" CodeBehind="admin-home.aspx.cs" Inherits="Gligli.admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-6 col-lg-3">
                <div class="card bg-primary">
                    <div class="card-body clearfix">
                        <div class="pull-right">
                            <p class="h6 text-white m-t-0">视频总数</p>
                            <p class="h3 text-white m-b-0"><%=nums.Videoplay %></p>
                        </div>
                        <div class="pull-left"><span class="img-avatar img-avatar-48 bg-translucent"><i class="mdi mdi-movie fa-1-5x"></i></span></div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-lg-3">
                <div class="card bg-danger">
                    <div class="card-body clearfix">
                        <div class="pull-right">
                            <p class="h6 text-white m-t-0">用户总数</p>
                            <p class="h3 text-white m-b-0"><%=nums.Usernum %></p>
                        </div>
                        <div class="pull-left"><span class="img-avatar img-avatar-48 bg-translucent"><i class="mdi mdi-account fa-1-5x"></i></span></div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-lg-3">
                <div class="card bg-success">
                    <div class="card-body clearfix">
                        <div class="pull-right">
                            <p class="h6 text-white m-t-0">专栏总数</p>
                            <p class="h3 text-white m-b-0"><%=nums.Arknum %></p>
                        </div>
                        <div class="pull-left"><span class="img-avatar img-avatar-48 bg-translucent"><i class="mdi mdi-file-document-box fa-1-5x"></i></span></div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-lg-3">
                <div class="card bg-purple">
                    <div class="card-body clearfix">
                        <div class="pull-right">
                            <p class="h6 text-white m-t-0">评论总数</p>
                            <p class="h3 text-white m-b-0"><%=nums.Spnum %> 条</p>
                        </div>
                        <div class="pull-left"><span class="img-avatar img-avatar-48 bg-translucent"><i class="mdi mdi-comment-outline fa-1-5x"></i></span></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">

            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header">
                        <h4>视频投稿数</h4>
                    </div>
                    <div class="card-body">
                        <canvas class="js-chartjs-bars"></canvas>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header">
                        <h4>注册用户记录</h4>
                    </div>
                    <div class="card-body">
                        <canvas class="js-chartjs-lines"></canvas>
                    </div>
                </div>
            </div>

        </div>

        <div class="row">

            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4>视频排行</h4>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>编号</th>
                                        <th>视频名称</th>
                                        <th>播放数</th>
                                        <th>点赞数</th>
                                        <th>标签</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>设计新主题</td>
                                        <td>6</td>
                                        <td>12</td>
                                        <td><span class="label label-success">待定</span></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>网站重新设计</td>
                                        <td>01/03/2019</td>
                                        <td>12/04/2019</td>
                                        <td><span class="label label-success">进行中</span></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>模型设计</td>
                                        <td>10/10/2019</td>
                                        <td>12/11/2019</td>
                                        <td><span class="label label-success">待定</span></td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>后台管理系统模板设计</td>
                                        <td>25/01/2019</td>
                                        <td>09/05/2019</td>
                                        <td><span class="label label-success">进行中</span></td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>前端设计</td>
                                        <td>10/10/2019</td>
                                        <td>12/12/2019</td>
                                        <td><span class="label label-success">未开始</span></td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>桌面软件测试</td>
                                        <td>10/01/2019</td>
                                        <td>29/03/2019</td>
                                        <td><span class="label label-success">进行中</span></td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>APP改版开发</td>
                                        <td>25/02/2019</td>
                                        <td>12/05/2019</td>
                                        <td><span class="label label-success">暂停</span></td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>Logo设计</td>
                                        <td>10/02/2019</td>
                                        <td>01/03/2019</td>
                                        <td><span class="label label-success">完成</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--图表插件-->
    <script type="text/javascript">
        $(document).ready(function (e) {
            var $dashChartBarsCnt = jQuery('.js-chartjs-bars')[0].getContext('2d'),
                $dashChartLinesCnt = jQuery('.js-chartjs-lines')[0].getContext('2d');

            var $dashChartBarsData = {
                labels: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
                datasets: [
                    {
                        label: '投稿视频',
                        borderWidth: 1,
                        borderColor: 'rgba(0,0,0,0)',
                        backgroundColor: 'rgba(51,202,185,0.5)',
                        hoverBackgroundColor: "rgba(51,202,185,0.7)",
                        hoverBorderColor: "rgba(0,0,0,0)",
                        data: [<%=upnums%>]
                    }
                ]
            };
            var $dashChartLinesData = {
                labels: ['2017','2018', '2019', '2020', '2021'],
                datasets: [
                    {
                        label: '用户总数',
                        data: [<%=usernums%>],
                        borderColor: '#358ed7',
                        backgroundColor: 'rgba(53, 142, 215, 0.175)',
                        borderWidth: 1,
                        fill: false,
                        lineTension: 0.5
                    }
                ]
            };

            new Chart($dashChartBarsCnt, {
                type: 'bar',
                data: $dashChartBarsData
            });

            var myLineChart = new Chart($dashChartLinesCnt, {
                type: 'line',
                data: $dashChartLinesData,
            });
        });
    </script>
</asp:Content>
