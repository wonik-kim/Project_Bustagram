<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
li { white-space: nowrap;
	 overflow:hidden;
	 text-overflow: ellipsis;
	}
ul.tabs2 {
    margin: 0;
    padding: 0;
    float: left;
    list-style: none;
    height: 32px;
    border-bottom: 1px solid #eee;
    border-left: 1px solid #eee;
    width: 100%;
    font-family:"dotum";
    font-size:30px;
}
ul.tabs2 li {
    float: left;
    text-align:center;
    cursor: pointer;
    width:82px;
    height: 31px;
    line-height: 31px;
    border: 1px solid #eee;
    border-left: none;
    font-weight: bold;
    background: #fafafa;
    overflow: hidden;
    position: relative;
}
ul.tabs2 li.active2 {
    background: #FFFFFF;
    border-bottom: 1px solid #FFFFFF;
}
.tab_container2 {
    border: 1px solid #eee;
    border-top: none;
    clear: both;
    float: left;
    width: 300px;
    background: #FFFFFF;
}
.tab_content2 {
    padding: 5px;
    font-size: 30px;
    display: none;
}
.tab_container2 .tab_content2 ul {
    width:100%;
    margin:0px;
    padding:0px;
}
.tab_container2 .tab_content2 ul li {
    padding:5px;
    list-style:none
}
;
 #container2 {
    width: 249px;
    margin: 0 auto;
}
</style>
<script>

$(function () {

    $(".tab_content2").hide();
    $(".tab_content2:first").show();

    $("ul.tabs2 li").click(function () {
        $("ul.tabs2 li").removeClass("active2").css("color", "#333");
        //$(this).addClass("active2").css({"color": "darkred","font-weight": "bolder"});
        $(this).addClass("active2").css("color", "darkred");
        $(".tab_content2").hide()
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn()
    });
});

</script>
</head>

<body>
	<div id="container2">
    <ul class="tabs2">
        <li class="active2" rel="tab3">공지사항</li>
        <li rel="tab4">문의사항</li>

    </ul>
    <div class="tab_container2">
        <div id="tab3" class="tab_content2">
            <ul>
                <li><a href="#">코로나 19 관련 버스킹 잠정 중단 안내</a>
                </li>
                <li><a href="#">음식점 블랙리스트</a>
                </li>
                <li><a href="#">버스커 정지 명단</a>
                </li>
                <li><a href="#">장비 대여료 관련 공지사항</a>
                
            </ul>
        </div>
        <!-- #tab3 -->
        <div id="tab4" class="tab_content2">
        <ul>
                <li><a href="#">와 서효성 이분 노래 진짜 뭐에요??완전 쩐다</a>
                </li>
                <li><a href="#">여기 음악,음식 둘다 맛집이네요!</a>
                </li>
                <li><a href="#">코로나 언제끝나요?</a>
                </li>
                <li><a href="#">관리자님 너무 잘생겼어요</a>
                </li>
                <li><a href="#">흐아아아아아</a>
                </li>
            </ul>
        </div>
        <!-- #tab4 -->

    </div>
    <!-- .tab_container22 -->
</div>
<!-- #container2 -->
</body>