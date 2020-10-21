<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
ul.tabs {
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
ul.tabs li {
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
ul.tabs li.active {
    background: #FFFFFF;
    border-bottom: 1px solid #FFFFFF;
}
.tab_container {
    border: 1px solid #eee;
    border-top: none;
    clear: both;
    float: left;
    width: 300px;
    background: #FFFFFF;
}
.tab_content {
    padding: 5px;
    font-size: 30px;
    display: none;
}
.tab_container .tab_content ul {
    width:100%;
    margin:0px;
    padding:0px;
}
.tab_container .tab_content ul li {
    padding:5px;
    list-style:none
}
;
 #container {
    width: 249px;
    margin: 0 auto;
}
</style>
<script>

$(function () {

    $(".tab_content").hide();
    $(".tab_content:first").show();

    $("ul.tabs li").click(function () {
        $("ul.tabs li").removeClass("active").css("color", "#333");
        //$(this).addClass("active").css({"color": "darkred","font-weight": "bolder"});
        $(this).addClass("active").css("color", "darkred");
        $(".tab_content").hide()
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn()
    });
});

</script>
</head>

<body>
	<div id="container">
    <ul class="tabs">
        <li class="active" rel="tab1">음악</li>
        <li rel="tab2">공연장소</li>
    </ul>
    <div class="tab_container">
    	
  
        <div id="tab1" class="tab_content">
            <ul>
            
                <li><img src = "img/first.png"><a href="#">어쿠스틱콜라보-너무보고싶어</a>
                </li>
                <li><img src = "img/second.png"><a href="#">적재-별보러가자</a>
                </li>
                <li><img src = "img/third.png"><a href="#">서효성-프로젝트 하기싫어</a>
                </li>
                <li>&nbsp;4&nbsp;&nbsp;<a href="#">스탠딩에그-오래된 노래</a>
                </li>
                <li>&nbsp;5&nbsp;&nbsp;<a href="#">이민성-3대400</a>
                </li>
            </ul>
        </div>
        <!-- #tab1 -->
        <div id="tab2" class="tab_content">
        <ul>
                <li><img src = "img/first.png"><a href="#">부경대 용당캠퍼스</a>
                </li>
                <li><img src = "img/second.png"><a href="#">경성대 건학기념관 운동장</a>
                </li>
                <li><img src = "img/third.png"><a href="#">앤시정보기술 3층</a>
                </li>
                <li>&nbsp;4&nbsp;&nbsp;<a href="#">센텀 롯데시네마</a>
                </li>
                <li>&nbsp;5&nbsp;&nbsp;<a href="#">서면 엔시백화점</a>
                </li>
            </ul>
        </div>
        <!-- #tab2 -->

    </div>
    <!-- .tab_container -->
</div>
<!-- #container -->
</body>