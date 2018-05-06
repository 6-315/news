//    script start
 
					var cimi = {
						init: function() {
							

							var sourceArr = [
								
							];
							cimiLoader.init(sourceArr, function() {
								$(".g-wrap").addClass("on")

							})
						},
					};
					$(function() {
						cimi.init();

					});
					var cimiLoader = {
							init: function(arr, fnc) {
								cimiLoader.loadcomplete = fnc;
								this.num = arr.length;
								for(var i = 0; i < this.num; i++) {
									cimiLoader.load(arr[i])
								}
							},
							num: null,
							currentnum: 0,
							load: function(url) {
								var img = new Image();
								img.onload = cimiLoader.loaded;
								img.src = url;
							},
							loaded: function() {
								cimiLoader.currentnum++;
								if(cimiLoader.currentnum == cimiLoader.num) {
									cimiLoader.loadcomplete();
								}
							},
							loadcomplete: null
						}
						//    script end



var gets={
    tag: function(p, o) {
        return document.getElementById(p).getElementsByTagName(o);
    },
    ran: String(new Date()).split(":")[1],
    ua: navigator.userAgent,
    u:"src/img"
},
hidDialogs = function() {
    need("biz.dialog", function(Dialog) {
        Dialog.hide();
    });
    $('#VideoContent').html('');
    pgvSendClick({
        hottag: 'v2.popup.close'
    })
},
JNav=function() {
    $('#J_nav').hover(function() {
        $('#J_subNav').css('visibility','visible');
    },function(){
        $('#J_subNav').css('visibility','hidden');
    });

    $('#J_play').on('click',function() {
        include("", function() {
	
          player.create({
                width:'900',
                height:'550',
                video:video,
                isVodFlashShowCfg:0,
                isVodFlashShowSearchBar:0,
                isVodFlashShowEnd:0,
              autoplay:1,
              vodFlashSkin:"http://imgcache.qq.com/minivideo_v1/vd/res/skins/TencentPlayerMiniSkin.swf",
                modId:'VideoContent',
                flashWmode:"transparent",
                vodFlashExtVars: {
                    share: 0,
                    follow: 0,
                    bullet:0
                }
            });
        });
        need("biz.dialog",function(Dialog){
            Dialog.show({
                id:'Video',
                bgcolor:"#000",
                opacity:70
            });
        });
        pgvSendClick({hottag:'v2.popup.video.play'})
    });


},

//主菜单导航
  menu_status={'m1':0,'m2':0,'m3':0,'m4':0},
JMenu = function(){

    $('#J_menu li.menu-item').each(function(index){
        $(this).on('click',function(){
              $('.home-slide').animate({
                  'marginLeft': -(1240 * index) +'px'
              }, 0);
            $(this).addClass("cur").siblings().removeClass("cur");
            $('.home-slide-item').eq(index).addClass('cur-slide').siblings().removeClass("cur-slide");
            $('.home-slide-item').eq(index).fadeIn(500).siblings().fadeOut(500);

            pgvSendClick({hottag:'v2.menu.m'+index+'.click'});


            if(index == 2 )
            {
                 include("http://lol.qq.com/v2/js/matchIndex.js", function() {
                     MATCH_HOME_PAGE.Init();
                 });
                matchLoad.init();
                if(menu_status.m3 == 0){
                    menu_status.m3 =1;
                    pgvSendClick({hottag:'v2.menu.m'+index+'.first'})
                }else{
                    pgvSendClick({hottag:'v2.menu.m'+index+'.again'})
                }
            }else{
                if(menu_status.m3 == 1){
                     matchLoad.clearLiveVideo();
                }
                if(index == 0)
                {
                    if(menu_status.m1 == 0){
                        menu_status.m1 =1;
                        pgvSendClick({hottag:'v2.menu.m'+index+'.first'})
                    }else{
                        pgvSendClick({hottag:'v2.menu.m'+index+'.again'})
                    }
                }
                if(index == 1)
                {
                    if(menu_status.m2 == 0){
                        include("http://lol.qq.com/v2/js/videoIndex.js", function() {});
                        menu_status.m2 =1;
                        pgvSendClick({hottag:'v2.menu.m'+index+'.first'})
                    }else{
                        pgvSendClick({hottag:'v2.menu.m'+index+'.again'})
                    }
                }
                if(index == 3)
                {
                    if(menu_status.m4 == 0){
                        include("http://lol.qq.com/v2/js/activeIndex.js", function() {
                            $('.act-tab li').click(function(){
                                $(this).addClass('active').siblings().removeClass('active');
                            })

                        });
                        menu_status.m4 =1;
                        pgvSendClick({hottag:'v2.menu.m'+index+'.first'})
                    }else{
                        pgvSendClick({hottag:'v2.menu.m'+index+'.again'})
                    }
                }

            }

        })
    });
},
JSearch = function() {
    $('#J_searchClick').on('click', function() {
        pgvSendClick({
            hottag: 'v2.nav.search.click'
        })
        $("#J_search").fadeIn(300);
    })
    $('#J_searchClose').on('click', function() {
        pgvSendClick({
            hottag: 'v2.nav.search.close'
        })
        $("#J_search").fadeOut(300);
    })
    $("#J_searchText").focus(function(){
        $('#J_searchTips').hide();
    });
    $("#J_searchText").blur(function(){
        $('#J_searchTips').show();
    });
    $('#J_searchText').on('keydown', function(event) {
        if (event.keyCode == 13) {
            // Enter
            pgvSendClick({
                hottag: 'v2.nav.search.enter'
            })
            location.href = '/act/a20160624search/index.html?&searchType=news&word=' + encodeURIComponent($(this).val());
        }
    })
    loadScript('/act/a20160624search/js/hot-words.js', function(data) {
        if (HotWords) {
            for (var idx in HotWords) {
                $('#J_searchShortcut').append($('<a href="/act/a20160624search/index.html?&searchType=news&word=' + encodeURIComponent(HotWords[idx]) + '" target="_blank">' + HotWords[idx] + '</a>'));
            }
        }
    });
},
timeHoverRecommend,
JRecommend = function(){
    $("#J_recommendTab  > li").each(function(index) {
        $(this).mouseover(function() {
            clearTimeout(timeHoverRecommend);
            var _this = this;
            timeHoverRecommend = setTimeout(function(){
                $(_this).addClass("current").siblings().removeClass("current");
                $(".recommend-content").eq(index).show().siblings('.recommend-content').hide();
            },180);
        })
    });
    var submitURI = 'http://lol.qq.com/web201310/js/videodata/LOL_VIDEOLIST_IDX2.js?r='+Math.random();
    $.getJSON(submitURI, function(data) {
        if (0 == data.status) {
            if('object'==typeof(data.msg.newlist)) {
                var retHTML0 = '';
                $.each(data.msg.newlist, function(i, info){
                    if(i<6) {
                        var url = info.url+'&ADTAG=lolweb.v2.home.r'+i;
                        retHTML0 += '<li><a class="pv-lnk" href="'+url+'" target="_blank"><img src="'+info.thumb+'" alt=""><span class="pa pv-cover-1"></span><span class="pa pv-cover-ico"></span><span class="shadow1"><i>'+ info.time+'</i></span><h5>'+info.title+'</h5></a></li>';
                    }
                });
                $("#J_recommendVideo").html(retHTML0);
            }else{
                var retHTML0 = '<li class="noresult">'+'暂无数据，请您稍后再试！'+'</li>';
                $("#J_recommendVideo").html(retHTML0);
            }
        }
    });

    loadScript("http://ossweb-img.qq.com/images/clientpop/act/lol/lol_act_1_index_special.js?v="+gets.ran,function(){
        var self = action,iHtml='',idate='',data=null,count=0;
        function strHtml(){
            return '<li><a class="act-img" href="'+data.sActDetailUrl +'&ADTAG=lolweb.v2.home" title="'+decodeURIComponent(data.sName) +'"><img alt="'+decodeURIComponent(data.sName) +'" src="'+data.sBigImgUrl+'"><span class="act-num">已有<strong class="act-num-f">'+data.iJoin+'</strong>人关注</span>'+idate+'</a><div class="act-innr"><h4 class="act-tit w-s-n"><h4 title="'+decodeURIComponent(data.sName) +'">'+decodeURIComponent(data.sName) +'</h4><p class="act-date w-s-n">活动时间：<span>'+dataTimes+'</span></p><p class="act-intro w-s-n">'+decodeURIComponent(data.sDescripion)+'</p></div></li>';
        }
        for(var x in self){
            if(count < 4){
                count++;
                data = self[x];
                dataTimes = data.dtBegin+'~'+data.dtEnd;
                if(data.iStatus == 0){
                    idate = '<span class="act-times act-over">暂未开始</span>';
                }else if(data.iStatus == -1){
                    idate = '<span class="act-times act-over">已结束</span>';
                }else if(data.iStatus == 999){
                    idate = '<span class="act-times act-long">长期活动</span>';
                    dataTimes = '永久';
                }else if(data.iStatus == 1){
                    idate = '<span class="act-times act-processing">'+data.iDate+'天后结束</span>';
                }
                iHtml+=strHtml();
            }
        }
        if(iHtml==''){iHtml = '<p class="loading">矮油，暂无相关活动哦!</p>'}
        g('J_recommendAct').innerHTML = iHtml;
    });
},
matchLoad = {
    dLiveFlag : false,// 当前页面是否有直播，false没有，true有
    dVideoPage : "http://lpl.qq.com/es/video_detail.shtml",
    dSeedingPage : "http://lpl.qq.com/es/live.shtml",
    dStatPage : "http://lpl.qq.com/es/stats.shtml",
    dHistoryPage: "http://lpl.qq.com/es/history.shtml",
    dGroupTeamScore : {},// 积分榜数据
    dTeamScoreBar : [5],// 积分榜tab，目前只放LPL一级赛事id
    dVideosTabNum : 12,// 赛事视频--显示多少一级tab
    dVideosSTabNum : 12,// 赛事视频--全场回顾--显示多少一级赛事tab
    dVideoList : {}, // 赛事视频-已加载数据(作为缓存)
    dDefaultMatchNum : 1,// 表示显示第几个近期赛程：近期赛程默认显示第1个大场(第一页)，如果有直播，跳到直播所在的页；如果没直播跳到最近一个未开始的页
    dUnStartMatchNum : 1,//最近一个未开始的赛程
    init: function () {
        var arr = ["http://lpl.qq.com/web201612/data/LOL_MATCH2_GAME_LIST_BRIEF.js","http://lpl.qq.com/web201612/data/LOL_MATCH2_TEAM_LIST.js","http://lpl.qq.com/web201612/js/public.js","http://lpl.qq.com/web201612/data/LOL_NEWMATCH_FIR_PAGE_VIDEO_TAB.js","http://lpl.qq.com/web201612/data/LOL_MATCH2_NEWS_CATE_LIST.js","http://lpl.qq.com/web201612/data/LOL_NEWMATCH_FIR_PAGE_WORLDHERO_TAB.js","http://lpl.qq.com/web201612/data/LOL_MATCH2_TEAM_MEMBER_LIST.js","http://lpl.qq.com/web201612/data/LOL_MATCH_ALL_BATTLE_SCORE_LIST.js"];
        include(arr,function(){
            //广告资讯轮播
            matchLoad.initRecNews();
            //赛程表初始化
            matchLoad.matchList();
            //资讯列表初始化
            matchLoad.initNewsList();
            //战队积分榜
            //matchLoad.initTeamScore();
            matchLoad.InitS7TeamScore(1);
            //赛事视频初始化
            matchLoad.initVideoNewsTab();
            //积分榜一级赛事点击事件
            $("#team_score_bar a").on("click",function(){
                var self = matchLoad;
                $(this).addClass('on').parent().siblings().children("a").removeClass('on');
//                var _idx = $(this).index();
//                // 渲染积分榜
//                var ret = self.FillTeamScoreHtml(self.dTeamScoreBar[_idx]);
//                if(ret){
//                    $("#group_bar a").eq(0).trigger("click");
//                    $(this).addClass('on').siblings().removeClass('on');
//                }else{
//                    alert("积分更新中，敬请期待");
//                }
            });
            //最强战力初始化
            matchLoad.initBestPlayers();
            $("#team_score_bar a").eq(1).trigger("click");
        });
    },
   
   
    /**
     * 获取资讯分类
     */
    getCateById : function (id){
        if ('undefined' == typeof (NewsCateList['msg'][id][0])) {
            return false;
        }
        return NewsCateList['msg'][id][0];
    },
    /**
     * 资讯轮播功能实现
     */
    matchPromo:function (boxId,btnId) {
        var boxID = $('#'+boxId),
            btnID = $('#'+btnId),
            t,
            timeout;
        var amount = 3,
            ts = amount - 1,
            p = 0;

        btnID.find('span').eq(0).addClass('on');
        t = 0;
        boxID.animate({
            'marginLeft': -t * 610 + 'px'
        }, {
            queue: false,
            duration: 200
        });
        btnID.find('span').eq(t).addClass('on').siblings().removeClass('on');
        timeout = setInterval(function() {
            promoMove();
        }, 3000);

        btnID.find('span').each(function(index) {
            $(this).mouseover(function() {
                clearInterval(timeout);
                t = index;
                boxID.animate({
                    'marginLeft': -t * 610 + 'px'
                }, {
                    queue: false,
                    duration: 200
                });
                btnID.find('span').eq(t).addClass('on').siblings().removeClass('on');
                timeout = setInterval(function() {
                    promoMove();
                }, 3000);
            });
        });
        //动画效果
        function promoMove() {
            t = parseInt(t + 1);
            if (t > ts) {
                t = 0;
            }
            if (t < 0) {
                t = ts;
            }
            p = t;
            boxID.animate({
                'marginLeft': -p * 610 + 'px'
            }, {
                queue: false,
                duration: 200
            });
            btnID.find('span').eq(p).addClass('on').siblings().removeClass('on');
        }
    }
},
initData = function(){
    JNav();
    JSearch();
    milo.ready(function(){
        var versionLINK = $("#setNum").data('link'),
            versionNum = $("#setNum").data('num');
        $('#J_version em').html('Ver '+versionNum);
        $('#J_version .top-version-link').attr("href",versionLINK);
        include("http://lol.qq.com/v2/js/head.js", function() {
            LW201310_Userinfo.init();
        });
        if(typeof(homePage) != "undefined"){//首页
            $('.home-slide-item').eq(0).addClass('cur-slide').siblings().removeClass("cur-slide");
            $('.home-slide-item').eq(0).fadeIn(500).siblings().fadeOut(500);
           function setCookies (cookieName,value,num)
            {
                var exdate=new Date();
                exdate.setTime(exdate.getTime() + (num*60*1000));
                document.cookie = cookieName + "="+ value + "; expires="+exdate.toUTCString();
            }
            function getCookies(cookieName)
            {
                var arr = document.cookie.match(new RegExp("(^| )"+cookieName+"=([^;]*)(;|$)"));
                if(arr != null) return unescape(arr[2]); return null;
            }
            var viewFirst = false;
            $(window).scroll(function(){

                var bt = $(document).scrollTop();
                if(bt > 80) {
                    if(getCookies("isFirstView")==null || !viewFirst){
                        setCookies('isFirstView',"isFirstView",60);
                        $('#header').addClass('header-close');

                        viewFirst = true;
                    }
                    if(bt > 440 && viewFirst){
                        $('.menu').addClass('fix-menu');
                    }
                    else{
                        $('.menu').removeClass('fix-menu');
                    }
                }

            });
        }else{
            // $('#header').addClass('header-close');
        }
    });


}();



var TOOLS = {
		G_defer_cache_map : {},
		GetQueryString : function(name){
	        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	        var r = window.location.search.substring(1).match(reg);
	        if (r != null) return unescape(r[2]); return null;
	    },
		In_array : function(value, array) {
			for(var x in array) {
				if(value == array[x]) return true;
			}
			return false;
		},
		//格式化时间
		ReloadPubdate : function(string) {
			var re = /^(\d{2,4})-(\d{1,2})-(\d{1,2}) (\d{1,2}):(\d{1,2}):(\d{1,2})$/;
			if( re.test(string) ) {
				var t = string.match(re);
				var d = new Date(t[1], t[2]-1, t[3], t[4], t[5], t[6]);
				var c = new Date();
				var s = (c.getTime() - d.getTime())/1000;
				var m = Math.floor(s/60);
				var h = Math.floor(s/3600);
				var d = Math.floor(s/86400);
				var n = Math.floor(s/(86400*30));
				var y = Math.floor(s/(86400*365));
				if(y>0) return y+"年以前"; 
				if(n>0) return n+"个月以前";
				if(d>0) return d+"天以前";
				if(h>0) return h+"小时以前";
				if(m>0) return m+"分钟以前";
			}
			return "刚刚";
		},
		//date 转 str
		LinuxTimeToDate : function(day){
		    var Year = 0; 
		    var Month = 0; 
		    var Day = 0; 
		    var CurrentDate = ""; 
		    //初始化时间 
		    //Year= day.getYear();//有火狐下2008年显示108的bug 
		    Year= day.getFullYear();//ie火狐下都可以 
		    Month= day.getMonth()+1; 
		    Day = day.getDate(); 
		    Hour = day.getHours(); 
		    Minute = day.getMinutes(); 
		    Second = day.getSeconds(); 
		    CurrentDate += Year + "-"; 
		    if (Month >= 10 ) { 
		        CurrentDate += Month + "-"; 
		    } 
		    else { 
		        CurrentDate += "0" + Month + "-"; 
		    } 
		    if (Day >= 10 ) { 
		        CurrentDate += Day ; 
		    }else { 
		        CurrentDate += "0" + Day ; 
		    }
		    if(Hour >=10 ){
		    	CurrentDate += " "+Hour ; 
		    }else{
		    	CurrentDate += " 0"+Hour ; 
		    }
		    if(Minute >=10 ){
		    	CurrentDate += ":"+Minute ; 
		    }else{
		    	CurrentDate += ":0"+Minute ; 
		    }
		    if(Second >=10 ){
		    	CurrentDate += ":"+Second ; 
		    }else{
		    	CurrentDate += ":0"+Second ; 
		    }
		    return CurrentDate; 
		},
		FormateMatchStatus : function(status){
			switch(status){
			case 1 :
				return "未开始";
			case 2 :
				return "进行中";
			case 3 :
				return "已结束";
			}
		}
};



/*  |xGv00|3e150692ee9d16d418853a236e9ec15c */