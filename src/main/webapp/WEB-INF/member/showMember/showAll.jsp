<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="description" content="">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

            <!-- Title  -->
            <title>Universal House : Backstage</title>

            <!-- Favicon  -->
            <link rel="icon" href="/amado-master/img/core-img/logo.png">

            <!-- Core Style CSS -->
            <link rel="stylesheet" href="/amado-master/css/core-style.css">
            <link rel="stylesheet" href="/amado-master/style.css">
            <style>
                @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+TC&display=swap');

                body {
                    font-family: 'Noto Sans TC', sans-serif;
                    font-size: 20px;
                }

                .main-content-wrapper .header-area .amado-nav li a {
                    font-family: 'Noto Sans TC', sans-serif;
                    font-size: 20px;
                }

                th,
                td {
                    word-break: break-all;
                }

                .main-content-wrapper .cart-table-area table thead tr th {
                    font-size: 16px;
                    text-align: center;
                }

                .image-upload>input {
                    display: none;
                }

                .footer_area .single_widget_area .footer_menu .navbar-nav .nav-item .nav-link {
                    font-size: 20px
                }

                .main-content-wrapper .header-area .amado-nav li a {
                    color: white
                }

                .main-content-wrapper .cart-table-area table tbody tr td {
                    display: flex;
                    flex-direction: column;
                    text-align: center;
                }

                .main-content-wrapper .cart-table-area table tbody tr {
                    border-bottom: 1pt solid #dee2e6;
                }

                #form {
                    width: 100%;
                }

                .alignRightDiv {
                    margin: 10px;
                    margin-left: auto;
                }

                .pagination {
                    display: inline-block;
                }


                .pagination a {
                    color: black;
                    float: left;
                    padding: 12px 16px;
                    text-decoration: none;
                    transition: background-color .3s;
                    border: 2px solid #ddd;
                    margin: 0 4px;
                    font-size: 16px;
                }

                .pagination a.active {
                    background-color: #4CAF50;
                    color: white;
                    border: 1px solid #4CAF50;
                }

                .pagination a:hover:not(.active) {
                    background-color: #ddd;
                }

                .btn:hover:not(.active) {
                    background-color: #ddd;
                }

                .custom-control-label:not(:disabled):not(.disabled) {
                    cursor: pointer;
                }

                .custom-control-label:hover:not(.active) {
                    font-size: 22px;
                }

                #searchMember[type="text"] {
                    padding: 5px;
                    font-size: 16px;
                    border-radius: 5px 5px 5px 5px;
                    border: 1px solid #ccc;
                    width: 40%;
                    margin: 5px;
                    outline: none;
                }

                #searchCondition {
                    font-size: 16px;
                    border-radius: 5px;
                    border: 3px solid #ccc;
                    width: 15%;
                    outline: none;
                    display: inline-block;
                }
            </style>


        </head>

        <body>
            <!-- ##### Main Content Wrapper Start ##### -->
            <div class="main-content-wrapper d-flex clearfix">

                <!-- Mobile Nav (max width 767px)-->
                <div class="mobile-nav">
                    <!-- Navbar Brand -->
                    <div class="amado-navbar-brand">
                        <a href="/"><img src="/amado-master/img/core-img/logo.png" alt=""></a>
                    </div>
                    <!-- Navbar Toggler -->
                    <div class="amado-navbar-toggler">
                        <span></span><span></span><span></span>
                    </div>
                </div>

                <!-- Header Area Start -->
                <header class="header-area clearfix" style="background-color:#212529">
                    <!-- Close Icon -->
                    <div class="nav-close">
                        <i class="fa fa-close" aria-hidden="true"></i>
                    </div>
                    <!-- Logo -->
                    <div class="logo">
                        <a href="/admin/showAllMember"><img width="150px" height="150px"
                                src="/amado-master/img/core-img/newLogo.png" alt=""></a>
                    </div>
                    <!-- Amado Nav -->
                    <nav class="amado-nav">
                        <ul>
                            <li class="active"><a href="/">首頁</a></li>
                            <li><a href="/admin/showAllMember">會員</a></li>
                            <li><a href="/admin/projects/showAllEntrusBacktage/1">專案</a></li>
                            <li><a href="/admin/spacereadall.controller">場地租借</a></li>
                            <li><a href="/admin/showAllcourse">課程</a></li>
                            <li><a href="/admin/testBackstage">測驗</a></li>
                            <li><a href="/admin/forumBackstage">論壇</a></li>
                        </ul>
                    </nav>
                    <!-- Button Group -->
                    <div class="amado-btn-group mt-30 mb-100" id="loginDiv">
                        <a href="/" id="memberCenterOrBs" class="btn amado-btn mb-15">返回前臺</a>
                    </div>

                </header>
                <!-- Header Area End -->

                <!-- 從這邊開始寫-->
                <div class="cart-table-area ">
                    <div class="container-fluid">
                        <div class="cart-title mt-50">
                            <h1 style="color: rgb(133, 133, 133)">後臺管理</h2>
                        </div>
                        <!-- <div class="row"> -->
                        <div class="cart-title mt-50">
                            <h2>會員列表</h2>
                        </div>

                        <div style="display: flex; flex-direction: row;">
                            <div class="clearfix"
                                style="display: flex; flex-direction:column ;padding-right: 50px;  flex-grow: 2; flex-shrink: 2; flex-basis: 0%;">
                                <div id="showChart">
                                    <input id="searchMember" type="text" placeholder="搜尋...">
                                    <a href="/admin/chart" class="btn"
                                        style="background-color:antiquewhite;float:right;padding:.2rem .75rem;margin:5px">查看圖表</a>
                                </div>
                                <form id="form" enctype="multipart/form-data" method="POST">

                                    <table class="table table-responsive" id="memberTable">
                                        <!-- <thead style="display: table-header-group;"> -->
                                        <thead>
                                            <!-- <a href="/chart" class="btn" style="font-size:10px; margin: 3px; width: 100px; height: 40px; white-space: normal;>查看圖表</a> -->

                                            <tr>
                                                <th style=" flex-shrink:1;" class="img">照片</th>
                                                <th style="flex-shrink:1;" class="id">帳號</th>
                                                <th style="flex-shrink:1;" class="name">暱稱</th>
<!--                                                 <th style="flex-shrink:1;" class="pwd">密碼</th> -->
                                                <th style="flex-shrink:1;" class="loc">地址</th>
                                                <th style="flex-shrink:1;" class="email">電子郵件</th>
                                                <th style="flex-shrink:1;" class="gender">性別</th>
                                                <th style="flex-shrink:1;" class="btd">生日</th>
                                                <th style="flex-shrink:1;" class="rt">註冊時間</th>
                                                <th style="flex-shrink:1;" class="ll">最後上線時間</th>
                                                <th style="flex-shrink:1;" class="vrfc">驗證</th>
                                                <th style="flex-shrink:1;" class="perm">權限</th>
                                                <th style="flex-shrink:1;" class="">功能</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </form>
                                <div class="alignRightDiv">
                                    <div class="pagination">
                                        <a href="#">&laquo;</a>
                                        <a href="#">1</a>
                                        <a href="#">2</a>
                                        <a href="#">3</a>
                                        <a href="#">4</a>
                                        <a href="#">5</a>
                                        <a href="#">&raquo;</a>
                                    </div>
                                </div>
                            </div>
                            <div style="flex-direction:column; display: flex; flex-direction:column; display: flex; padding-top:80px"
                                class=" clearfix ">
                                <div>
                                    <p>勾選隱藏/顯示欄位</p>
                                    <hr>
                                </div>
                                <div class=" custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowimg" id="ifShowimg"
                                        checked="true">
                                    <label class="custom-control-label" for="ifShowimg">照片</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowid" id="ifShowid"
                                        checked="true">
                                    <label class="custom-control-label" for="ifShowid">帳號</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowname"
                                        id="ifShowname" checked="true">
                                    <label class="custom-control-label" for="ifShowname">暱稱</label>
                                </div>
<!--                                 <div class="custom-control custom-checkbox" style="display: inline-flex;"> -->
<!--                                     <input type="checkbox" class="custom-control-input" name="ifShowpwd" id="ifShowpwd"> -->
<!--                                     <label class="custom-control-label" for="ifShowpwd">密碼</label> -->
<!--                                 </div> -->
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowloc" id="ifShowloc">
                                    <label class="custom-control-label" for="ifShowloc">地址</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowemail"
                                        id="ifShowemail">
                                    <label class="custom-control-label" for="ifShowemail">電子郵件</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowgender"
                                        id="ifShowgender">
                                    <label class="custom-control-label" for="ifShowgender">性別</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowbtd" id="ifShowbtd">
                                    <label class="custom-control-label" for="ifShowbtd">生日</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowrt" id="ifShowrt">
                                    <label class="custom-control-label" for="ifShowrt">註冊時間</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowll" id="ifShowll">
                                    <label class="custom-control-label" for="ifShowll">最後上線時間</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowvrfc"
                                        id="ifShowvrfc">
                                    <label class="custom-control-label" for="ifShowvrfc">驗證</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowperm"
                                        id="ifShowperm" checked="true">
                                    <label class="custom-control-label" for="ifShowperm">權限</label>
                                </div>
                            </div>
                        </div>
                        <!-- </div> -->
                    </div>


                </div>


                <!-- 這邊結束 -->

            </div>
            <!-- ##### Main Content Wrapper End ##### -->

            <!-- ##### Footer Area Start ##### -->
            <footer class="footer_area clearfix">
                <div class="container">
                    <div class="row align-items-center">
                        <!-- Single Widget Area -->
                        <div class="col-12 col-lg-4">
                            <div class="single_widget_area">
                                <!-- Logo -->
                                <div class="footer-logo mr-50">
                                    <a href="/"><img width="200px" height="200px"
                                            src="/amado-master/img/core-img/newLogo.png" alt=""></a>
                                </div>
                            </div>
                        </div>
                        <!-- Single Widget Area -->
                        <div class="col-12 col-lg-8">
                            <div class="single_widget_area">
                                <!-- Footer Menu -->
                                <div class="footer_menu">
                                    <nav class="navbar navbar-expand-lg justify-content-end">
                                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                                            data-target="#footerNavContent" aria-controls="footerNavContent"
                                            aria-expanded="false" aria-label="Toggle navigation"><i
                                                class="fa fa-bars"></i></button>
                                        <div class="collapse navbar-collapse" id="footerNavContent">
                                            <ul class="navbar-nav ml-auto">
                                                <li class="nav-item">
                                                    <a class="nav-link" href="showAllMember">會員</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link"
                                                        href="/myProjects/showAllEntrusBacktage/1">專案</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="/admin/spacereadall.controller">場地</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="/admin/showAllcourse">課程</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="/admin/testBackstage">測驗</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="/admin/forumBackstage">論壇</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- ##### Footer Area End ##### -->

            <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
            <script src="/amado-master/js/jquery/jquery-2.2.4.min.js"></script>
            <!-- Popper js -->
            <script src="/amado-master/js/popper.min.js"></script>
            <!-- Bootstrap js -->
            <script src="/amado-master/js/bootstrap.min.js"></script>
            <!-- Plugins js -->
            <script src="/amado-master/js/plugins.js"></script>
            <!-- Active js -->
            <script src="/amado-master/js/active.js"></script>
            <!-- dataTable -->
            <script src="//cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
            <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

            <script>
                $(function () {
                    let totalPages;
                    let totalElements;
                    let pageSize = 5;
                    let pageNo = 0;
                    var currentUser;
                    //確認使用者是否登入並拿到當前使用者 
                    $.ajax({
                        type: "get",
                        url: "/getCurrentUser.do",
                        success: function (member) {
                            currentUser = member;
                        }
                    });

                    //for 迴圈初始化table 載入所有users
                    var members;
                    let upgradeToAdminBtn = '<input type="button" class="btn upgradeToAdminBtn" value="提高權限" style=" width: 100%; height: 40px; white-space: normal;">';
                    let degradeToUserBtn = '<input type="button" class="btn degradeToUserBtn" value="降低權限" style=" width: 100%; height: 40px; white-space: normal;">';

                    showPageableMember(0, 5);
                    function showPageableMember(pageNo, pageSize) {
                        $.ajax({
                            type: "POST",
                            url: "/admin/showAllMemberPageable.do/" + pageNo + "/" + pageSize,
                            success: function (result) {
                                console.log(result)
                                $('#memberTable tbody tr').empty();
                                loadMemberInfoToTd(result)

                                //如果左邊有打勾則顯示，沒打勾的class把他隱藏
                                let items = ["img", "id", 'name', "pwd", "loc", "email", "gender", "btd", "rt", "ll", "vrfc", "perm"]
                                items.forEach(item => {
                                    if (!$('#ifShow' + item).is(':checked')) {
                                        $('.' + item).attr('style', function () {
                                            if ($(this).css('display') != 'none') {
                                                return $(this).attr('style') + 'display: none';
                                            }
                                        })
                                    }
                                });

                                aStr = '<a href="#">&laquo;</a>';
                                for (var i = 0; i < totalPages; i++) {
                                    aStr += '<a href="#">' + (i + 1) + '</a>';
                                }
                                aStr += '<a href="#">&raquo;</a>'
                                $('.pagination').html(aStr);
                                $('.pagination').children().eq(result.number + 1).css('background-color', '#ddd');
                            },
                            error: function (xhr, status, error) {
                                alert(xhr.responseText);
                            }
                        })
                    }

                    //判斷會員資訊，並將該資訊用htmlStr加到table的tr中
                    function loadMemberInfoToTd(result) {
                        totalPages = result.totalPages;
                        totalElements = result.totalElements;
                        members = result.content;
                        // background-color: #ddd;

                        $.each(members, function (i, member) {
                            $('#memberTable tbody').append('<tr id= tr' + i + '></tr>');

                            //判斷member是否有照片，如果沒有使用default照片
                            let imgStr = '<td style="vertical-align: middle;flex:auto;" class="img"><img src="/images/member/member.png"alt="Product" style="width:100%"></td>';
                            $('#memberTable tbody tr').eq(i).append(imgStr);
                            if (member.haveImg == true) {
                                $('#tr' + i).children().eq(0).children().attr('src', '/ShowMemberImgServlet.do/' + member.memberId)
                            }

                            //判斷是否已認證信箱,若無顯示發送驗證信按鈕
                            let vrfcStr = member.verification == 1 ?
                                '<td style="flex-shrink:1;" class="vrfc"><span> 已驗證 </span></td>'
                                : '<td style="flex-shrink:1;" class="vrfc"><input type="button" class="btn sendMail" value="發送驗證信" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"></td>';

                            let userIdentity = member.permission == 1 ?
                                '管理員' : '用戶';
                            let permStr;
                            let funcStr;

                            if (member.permission == 0) {
                                permStr = '<td style="flex-shrink:1;" class="perm"><span>'
                                    + userIdentity + '</span>' + upgradeToAdminBtn + '</td>';
                                funcStr = '<td style="flex-shrink:1;"><input type="button" class="btn toModifyMode" value="修改" style="margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button" class="btn delete" value="刪除" style="margin: 3px; width: 100%; height: 40px; white-space: normal;"></td>';
                            } else {
                                permStr = '<td style="flex-shrink:1;" class="perm"><span>'
                                    + userIdentity + '</span>' + degradeToUserBtn + '</td>';
                                funcStr = '<td style="flex-shrink:1;"><input type="button" class="btn toModifyMode" value="修改" style="margin: 3px; width: 100%; height: 40px; white-space: normal;"></td>';

                            }

                            tdStr =
                                '<td style="flex-shrink:1;" class="id"><span>' + member.memberId + '</span></td>' +

                                '<td style="flex-shrink:1;" class="name"><span>' + member.name + '</span></td>' +

                                '<td style="flex-shrink:1;" class="pwd"><span>' + member.password + '</span></td>' +

                                '<td style="flex-shrink:1;" class="loc"><span>' + member.location + '</span></td>' +

                                '<td style="flex-shrink:1;" class="email"><span>' + member.email + '</span></td>' +

                                '<td style="flex-shrink:1;" class="gender"><span>' + member.gender + '</span></td>' +

                                '<td style="flex-shrink:1;" class="btd";><span>' + member.birthday + '</span></td>' +

                                '<td style="flex-shrink:1;" class="ll"><span>' + member.lastLogin + '</span></td>' +

                                '<td style="flex-shrink:1;" class="rt"><span>' + member.registTime + '</span></td>'

                                + vrfcStr + permStr + funcStr;

                            $('#memberTable tbody tr').eq(i).append(tdStr);
                        })
                    }

                    //動態綁定check box -> 隱藏或開啟id collumn				
                    let items = ["img", "id", 'name', "pwd", "loc", "email", "gender", "btd", "rt", "ll", "vrfc", "perm"]

                    items.forEach(item => {
                        $('#ifShow' + item).on('click', function () {
                            //隱藏member欄位
                            if (!$(this).is(':checked')) {
                                $('.' + item).css("display", "none");
                                //載入搜尋條件
                            } else {
                                $('.' + item).css("display", "");
                                console.log($(this).next('label'));
                            }
                            $('#searchCondition').remove();
                            $('#showChart').prepend(loadConditionColumn(items));
                        })
                    });

                    function loadConditionColumn(items) {
                        let condStr = '<select id="searchCondition" class="nice-select">'
                            + '<option value="all">全部</option>';
                        items.forEach(item => {
                            col = $('#ifShow' + item);
                            // console.log(col.next('label').text())
                            // if (item == 'img' || item == 'pwd' || item == 'btd' || item == 'rt') {
                            //     return;
                            // }
                            //沒打勾隱藏member欄位
                            if (col.is(':checked')) {
                                condStr += '<option value="' + item + '">' + col.next('label').text() + '</option>';
                                console.log(col.next('label').text());
                            }
                        });
                        condStr += '</select >';
                        console.log(condStr);
                        return condStr;
                    }
                    console.log(loadConditionColumn(items))
                    $('#showChart').prepend(loadConditionColumn(items));

                    member = {
                        memberId: "",
                        name: "",
                        password: "",
                        location: "",
                        email: "",
                        gender: "",
                        birthday: "",
                        registerTime: "",
                        lastLogin: "",
                        memberImgSrc: ""
                    };
                    var member1 = Object.create(member);
                    $('tbody').on('click', '.toModifyMode', function () {
                        //將member資訊先存起來，修改完後交回
                        member1.memberId = $(this).parent().siblings().eq(1).children().text();
                        member1.name = $(this).parent().siblings().eq(2).children().text();
                        member1.password = $(this).parent().siblings().eq(3).children().text();
                        member1.location = $(this).parent().siblings().eq(4).children().text();
                        member1.email = $(this).parent().siblings().eq(5).children().text();
                        member1.gender = $(this).parent().siblings().eq(6).children().text();
                        member1.birthday = $(this).parent().siblings().eq(7).children().text();
                        member1.registerTime = $(this).parent().siblings().eq(8).children().text();
                        member1.lastLogin = $(this).parent().siblings().eq(9).children().text();
                        member1.memberImgSrc = $(this).parent().siblings().eq(0).find('img').attr('src');

                        //將表格改成 <input>
                        url = member1.memberImgSrc.includes('.do')
                            ? "/ShowMemberImgServlet.do/" + member1.memberId
                            : "/amado-master/img/core-img/member.png";
                        let img = '<label for="memberImage"><img src="' + url + '" alt="Product" style="width:100%"></label><input type="file" name="memberImage" id="memberImage" style="width: 100%; display:none">';

                        $(this).parent().siblings().eq(0).html(img);

                        $(this).parent().siblings().eq(2).children().html(
                            '<input type="text" name="name" id="name" class="form-control"> ');
                        $('#name').attr("placeholder", member1.name);

                        $(this).parent().siblings().eq(3).children().html(
                            '<input type="text" name="password" id="password" class="form-control">');
                        $('#password').attr("placeholder", member1.password);

                        // $(this).parent().siblings().eq(4).children().html(
                        //     '<input type="text" name="location" id="location" class="form-control"> ');                     
                        let selectStr = '<select class="w-100 nice-select" id="location" name="location">' +
                            '<option value="基隆" id="Keelung">基隆</option>' +
                            '<option value="新北" id="New Taipei">新北</option>' +
                            '<option value="台北" id="Taipei">台北</option>' +
                            '<option value="桃園" id="Taoyuan">桃園</option>' +
                            '<option value="新竹" id="Hsinchu">新竹</option>' +
                            '<option value="苗栗" id="Miaoli">苗栗</option>' +
                            '<option value="台中" id="Taichung">台中</option>' +
                            '<option value="彰化" id="Changhua">彰化</option>' +
                            '<option value="南投" id="Nantou">南投</option>' +
                            '<option value="雲林" id="Yunli">雲林</option>' +
                            '<option value="嘉義" id="Chiayi">嘉義</option>' +
                            '<option value="台南" id="Taina">台南</option>' +
                            '<option value="高雄" id="Kaohsiung">高雄</option>' +
                            '<option value="屏東" id="Pingtung">屏東</option>' +
                            '<option value="宜蘭" id="Yilan">宜蘭</option>' +
                            '<option value="花蓮" id="Hualien">花蓮</option>' +
                            '<option value="台東" id="Taitung">台東</option>' +
                            '<option value="澎湖" id="Penghu">澎湖</option>' +
                            '<option value="金門" id="Kinmen">金門</option>' +
                            '<option value="馬祖" id="Lienchiang">馬祖</option></select>';
                        $(this).parent().siblings().eq(4).children().html(selectStr);
                        $('#location option[value="' + member1.location + '"]').attr("selected", true);




                        $(this).parent().siblings().eq(5).children().html(
                            '<input type="email" name="email" id="email" class="form-control">');
                        $('#email').attr("placeholder", member1.email);

                        $(this).parent().siblings().eq(7).children().html(
                            '<input type="date" name="birthday" id="birthday" class="form-control">');
                        $('#birthday').attr("placeholder", member1.birthday);

                        $(this).parent().html(
                            '<input type="button" class="btn" id="modifyConfirm" value="確認" style="margin: 3px; width: 100%; height: 40px; white-space: normal;">' +

                            '<input type="button" class="btn " id="modifyCancle" value="取消" style="margin: 3px; width: 100%; height: 40px; white-space: normal;">'
                        );
                        //remove Class toModifyMode讓其他修改不能動
                        $('.toModifyMode').removeClass('toModifyMode').addClass('modifying');
                    })

                    //取消修改
                    $('tbody').on('click', '#modifyCancle', modifyCancel);
                    function modifyCancel() {

                        console.log(member1)
                        //取消其他modify button不能修改的控制
                        $('.modifying').removeClass('modifying').addClass('toModifyMode');

                        $('#modifyCancle').parent().siblings().eq(2).html('<span></span>');
                        $('#modifyCancle').parent().siblings().eq(3).html('<span></span>');
                        $('#modifyCancle').parent().siblings().eq(4).html('<span></span>');
                        $('#modifyCancle').parent().siblings().eq(5).html('<span></span>');
                        $('#modifyCancle').parent().siblings().eq(7).html('<span></span>');

                        $('#modifyCancle').parent().siblings().eq(2).children().text(member1.name);
                        $('#modifyCancle').parent().siblings().eq(3).children().text(member1.password);
                        $('#modifyCancle').parent().siblings().eq(4).children().text(member1.location);
                        $('#modifyCancle').parent().siblings().eq(5).children().text(member1.email);
                        $('#modifyCancle').parent().siblings().eq(7).children().text(member1.birthday);


                        if (member1.modified) {
                            url = member1.haveImg == 1 ?
                                "/ShowMemberImgServlet.do/" + member1.memberId :
                                "/amado-master/img/core-img/member.png";
                        } else {
                            url = member1.memberImgSrc.includes('.do') ?
                                "/ShowMemberImgServlet.do/" + member1.memberId :
                                "/amado-master/img/core-img/member.png";
                        }

                        img = '<img src="' + url + '"alt="Product" style="width: 100%">';
                        $('#modifyCancle').parent().siblings().eq(0).html(img);

                        $('#modifyCancle').parent().html('<input type="button" class="btn toModifyMode" value="修改" style="margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button" class="btn delete" value="刪除" style="margin: 3px; width: 100%; height: 40px; white-space: normal;" >');

                    }

                    //確認使用者是否有修改密碼
                    function varifyPassword() {
                        let password = $("#password").val();
                        //確認是否符合密碼規則
                        if (password.match(/[a-z]/g) && password.match(/[A-Z]/g) && password.match(/[0-9]/g) &&
                            password.match(/[^a-zA-Z\d]/g) && password.length >= 8) {
                            return true;
                        } else {
                            return false;
                        }
                    }
                    $('tbody').on('blur', '#password', function () {
                        // user點進password input內, blur後檢查是否有修改, 沒修改不動作
                        //有修改檢查密碼規則
                        if ($(this).val() != '' && !varifyPassword()) {
                            //不符合將submit變成button不給送出
                            $('#modifyConfirm').removeAttr('modifyConfirm').attr('id', 'checkError');
                            if ($(this).siblings().length < 1) {
                                console.log($(this).siblings().length)
                                $(this).parent().append('<span class="errorMsg" id="errorPwd" style="color: red; font-size: 4px; margin-left: 20px">密碼應至少包含 8 個字元，包括至少一個大寫字母和一個小寫字母、一個特殊字元和一個數字</span>')
                            }
                        } else {
                            $('#checkError').removeAttr('checkError').attr('id', 'modifyConfirm');
                            $('#errorPwd').remove();
                        }
                    })

                    //確認修改並至dao修改會員資料

                    $('tbody').on('click', '#modifyConfirm', function () {
                        var form = $('#form')[0];
                        console.log(form)
                        var formData = new FormData(form);
                        console.log(formData)
                        let memberId = $(this).parent().siblings().eq(1).children().text();
                        formData.append("memberId", memberId);

                        $.ajax({
                            type: "post",
                            url: "/admin/modifyByAdmin.do",
                            enctype: "multipart/form-data",
                            contentType: false,
                            cache: false,
                            processData: false,
                            data: formData,
                            success: function (result) {
                                Swal.fire("update success");
                                member1 = result;
                                member1.modified = true;
                                modifyCancel();
                            },
                            error: function (result) {
                                Swal.fire("update error")
                            }
                        });
                    })



                    //刪除會員
                    $('tbody').on('click', '.delete', function () {
                        let memberId = $(this).parent().siblings().eq(1).children().text();
                        let tr = $(this).parent().parent();
                        console.log(tr);
                        $.ajax({
                            type: "post",
                            url: "/users/delete.do/" + memberId,
                            success: function (result) {
                                Swal.fire("response success")
                                //刪除當前的tr
                                tr.remove();
                                showPageableMember(pageNo, pageSize);
                            },
                            error: function (result) {
                                Swal.fire("response error")
                            }
                        });

                    })

                    //發送驗證信
                    $('tbody').on('click', '.sendMail', function () {
                        let memberId = $(this).parent().siblings().eq(1).children().text();
                        $.ajax({
                            type: "post",
                            url: "/sendMail.do/" + memberId,
                            success: function (result) {
                                Swal.fire("已將驗證信送至您的信箱，請至信箱確認")
                            },
                            error: function (result) {
                                Swal.fire("response error")
                            }
                        });
                    })

                    $('tbody').on('click', '.upgradeToAdminBtn', function () {
                        let memberId = $(this).parent().siblings().eq(1).children().text();
                        // console.log($(this).parent().html())
                        // $(this).parent().html('<span>管理員</span>');
                        let td = $(this).parent();
                        $.ajax({
                            type: "post",
                            url: "/admin/upgradeToAdmin.do/" + memberId,
                            success: function (result) {
                                td.html('<span>管理員</span>' + degradeToUserBtn);
                                Swal.fire("用戶: " + result.memberId + " 權限提高至管理員");
                            },
                            error: function (result) {
                                Swal.fire("response error");
                            }
                        });
                    });

                    $('tbody').on('click', '.degradeToUserBtn', function () {
                        let memberId = $(this).parent().siblings().eq(1).children().text();
                        let td = $(this).parent();
                        $.ajax({
                            type: "post",
                            url: "/admin/degradeToUser.do/" + memberId,
                            success: function (result) {
                                td.html('<span>用戶</span>' + upgradeToAdminBtn);
                                Swal.fire("用戶: " + result.memberId + " 權限變更為用戶");
                            },
                            error: function (result) {
                                Swal.fire("response error");
                            }
                        });
                    });

                    $('.pagination').on('click', 'a', function () {
                        console.log(totalPages);
                        console.log($('.pagination').children().eq(pageNo + 1).text())
                        $('.pagination').children().eq(pageNo + 1).css('background-color', '');

                        if ($(this).text() == '«') {
                            pageNo = 0
                        } else if ($(this).text() == '»') {
                            pageNo = totalPages - 1;
                        } else {
                            pageNo = $(this).text() - 1;
                        }
                        showPageableMember(pageNo, pageSize);
                    })

                    //搜尋功能
                    $('#searchMember').on('input', function () {
                        let keyWord = this.value;
                        let col = $('#searchCondition').val();
                        console.log(keyWord)
                        if ($.trim(keyWord) != '') {
                            $.ajax({
                                type: "POST",
                                url: "/searchMemberPageable.do/" + pageNo + "/" + pageSize + "/" + col + "/" + keyWord,
                                success: function (result) {
                                    console.log(result)
                                    $('#memberTable tbody tr').empty();
                                    loadMemberInfoToTd(result)

                                    //如果左邊有打勾則顯示，沒打勾的class把他隱藏
                                    let items = ["img", "id", 'name', "pwd", "loc", "email", "gender", "btd", "rt", "ll", "vrfc", "perm"]
                                    items.forEach(item => {
                                        if (!$('#ifShow' + item).is(':checked')) {
                                            $('.' + item).attr('style', function () {
                                                if ($(this).css('display') != 'none') {
                                                    return $(this).attr('style') + 'display: none';
                                                }
                                            })
                                        }
                                    });

                                    aStr = '<a href="#">&laquo;</a>';
                                    for (var i = 0; i < totalPages; i++) {
                                        aStr += '<a href="#">' + (i + 1) + '</a>';
                                    }
                                    aStr += '<a href="#">&raquo;</a>'
                                    $('.pagination').html(aStr);
                                    $('.pagination').children().eq(result.number + 1).css('background-color', '#ddd');
                                },
                                error: function (xhr, status, error) {
                                    alert(xhr.responseText);
                                }
                            })
                        } else {
                            showPageableMember(pageNo, pageSize);
                        }
                    })




                })
            </script>

        </body>

        </html>