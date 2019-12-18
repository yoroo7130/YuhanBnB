<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">        
    <link rel="stylesheet" href="../css/plus/swiper.min.css">         
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=a65sipx81f&amp;submodules=panorama,geocoder,drawing,visualization"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps-panorama.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps-geocoder.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps-drawing.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps-visualization.js"></script>
    <style>        
        /* Login Pop */
        .bg_dimm{display:none;position:fixed;top:0;right:0;bottom:0;left:0;z-index:410;background:rgba(0,0,0,0.78);touch-action:none;}
        .bg_dimm_prevent{display:none;position:fixed;top:0;right:0;bottom:0;left:0;z-index:410;background:rgba(0,0,0,0.78)}
        .bg_dimm-img{display:none;position:fixed;top:0;right:0;bottom:0;left:0;z-index:410;background:rgba(0,0,0,0.78);touch-action:none;}
        .bg_dimm_prevent-img{display:none;position:fixed;top:0;right:0;bottom:0;left:0;z-index:410;background:rgba(0,0,0,0.78)}
        .and .pop_login.focus{top:-143px;}
        .layer_w{display:none;position:fixed;top:0;right:0;bottom:0;left:0;z-index:400;background:#fff;font-size:14px;line-height:22px;color:rgba(0,0,0,0.87);   touch-action:none;}
        .layer_w .fix_title{position:relative;margin-bottom:16px;background:#fff;border-bottom:none}
        .layer_w .fix_title .logo{display:inline-block;width:80px;height:44px;background:url('//image.goodchoice.kr/images/web_v3/h1_mobile.png') 0 50% no-repeat;background-size:80px auto;text-indent:-9999px}
        .layer_w .fix_title strong{display:block;font-size:18px;line-height:44px;font-weight:normal}
        .layer_w .fix_title button{margin-right:-18px}
        .layer_w section{width:auto;margin:0 24px}
        .layer_fix .btn_start{display:block;position:relative;height:40px;margin-bottom:8px;border-radius:4px;font-size:14px;line-height:40px;text-align:center}
        .layer_fix .btn_start span{display: inline-block;}
        .layer_fix .btn_start span i{display: inline-block;position: relative;top: 3px;padding-right: 5px;font-size: 20px}
        .layer_fix .btn_kakao{background:rgb(252,229,30);color:rgb(59,29,20)}
        .layer_fix .btn_fb{background:rgb(24,119,242);color:#fff}
        .layer_fix .btn_naver{background:rgb(40,209,17);color:#fff}
        .layer_fix.fix_disable{overflow: auto;position: relative;touch-action: auto}
        .space_or{position:relative;height:40px;margin-bottom:8px}
        .space_or:after{content:'';position:absolute;top:50%;left:0;width:100%;height:1px;background:rgba(0,0,0,0.08)}
        .space_or span{display:inline-block;position:absolute;top:0;left:50%;z-index:10;width:50px;height:40px;margin:0 0 0 -25px;background:#fff;font-size:14px;line-height:40px;color:rgba(0,0,0,0.38);;text-align:center}
        .layer_w .btn_link{display:block;width:100%;height:48px;margin-top:16px;border-radius:4px;font-size:14px;line-height:48px;color:#fff;text-align:center;border:none}
        .pop_login .link_half{overflow:hidden;position:relative;height:40px;margin-top:9px}
        .pop_login .link_half:after{display:inline-block;content:'';position:absolute;top:13px;left:50%;width:1px;height:11px;background:rgba(0,0,0,0.08)}
        .pop_login .link_half div{display:inline-block;float:left;width:50%;height:40px;text-align: center;}
        
        .pop_login .link_half div button, .pop_login .link_half div a {height:40px;background: none;font-size:14px;line-height:40px;color:rgba(0,0,0,0.87);vertical-align: top;}
        .pop_login button{border: none;}
        .pop_login .btn_start{width: 100%;}
        
        .pop_login .guest_link{text-decoration: underline;color:#000}
        .txt_agree{margin:20px 0 32px 0;font-size:16px;line-height: 1.6;color:rgba(0,0,0,0.56);text-align:center}
        .txt_agree a{color:rgba(0,0,0,0.87);text-decoration:underline}
        .pop_mem_reserve .txt_top{margin:12px 0 18px 0;color:rgba(0,0,0,0.56);text-align:center;}
        .pop_mem_reserve .link{margin-top:9px;text-align:center}
        .pop_mem_reserve .link button{display:inline-block;height:27px;padding: 0;border: none;background: none;font-size:14px;line-height:27px;color:rgba(0,0,0,0.87)}
        .pop_downlink .top_txt{margin:0 0 25px 0;color:rgba(0,0,0,0.56);text-align:center}
        .pop_downlink .fix_title{margin-bottom:0}
        
        .and .layer_unfix{position: relative !important;overflow-y: auto;overflow-x: hidden;}
        .and .layer_unfix.focus{position:relative;top:0 !important}
        
        .layer_fix {display:block;overflow: hidden;position:fixed;top:0;right:0;bottom:0;left:0;z-index:400;width: 100%;min-width: 320px;height: 100%;background:#fff;font-size:14px;line-height:22px;color:rgba(0,0,0,0.87);   touch-action:none;}
        .layer_fix .fix_title{position:relative;margin-bottom:16px;background:#fff;border-bottom:none}
        .layer_fix .fix_title .logo{display:inline-block;width:80px;height:44px;background:url('//image.goodchoice.kr/images/web_v3/ic_bi_yeogi_250px.png') 0 50% no-repeat;background-size:80px auto;}
        .layer_fix .fix_title .logo a{display: block;text-indent:-9999px}
        .layer_fix .fix_title strong{display:block;font-size:18px;line-height:44px;font-weight:normal}
        .layer_fix .fix_title button{margin-right:-18px}
        .layer_fix .sub_title{display: block;margin-bottom:10px;font-size:16px;text-align: center;}
        .layer_fix section{width:auto;margin:0 24px}
        .layer_fix .btn_start{display:block;position:relative;height:40px;margin-bottom:8px;border-radius:4px;font-size:14px;line-height:40px;text-align:center}
        .layer_fix .btn_link{display:block;width:100%;height:56px;margin-top:16px;border-radius:6px;font-size:16px;line-height:56px;color:#fff;text-align:center;border:none}
        .layer_fix .layer_fix_footer {
           color: rgba(0,0,0,0.38);
           margin-top: 70px;
        }
        .layer_fix .layer_fix_footer p {
           color: rgba(0,0,0,0.38);
           text-align: center;
        }
        .layer_fix .layer_fix_footer p.copyright {
           font-size: 13px;
        }
        
        .layer_fix .layer_fix_footer p a {
           color: rgba(0,0,0,0.38);
           margin: 0 3px;
           font-size: 14px;
        }
        
        .layer_fix .agree{margin:0;}
        
        @media all and (min-width:480px){
           .and .pop_login.focus{position:absolute;top:-200px}
        }
        
        @media all and (min-width:760px){
           .and .pop_login.focus{position:fixed;top:0}
        }
        
        @media all and (min-width:1024px){
           .layer_w{font-size:15px;line-height:26px;color:rgba(0,0,0,0.87)}
           .layer_w .fix_title{display:block !important}
           .layer_w section{width:336px;margin:150px auto 0 auto}
           .layer_w .fix_title .logo{width:112px;height:44px;background:url('//image.goodchoice.kr/images/web_v3/h1_mobile.png') 50% 50% no-repeat;background-size:112px 23px;text-indent:-9999px}
           .layer_w .fix_title strong{font-size:24px;font-weight:bold}
           .layer_w .fix_title button{margin-right:-14px}
           .layer_w .btn_start{height:56px;font-size:16px;line-height:56px}
           .layer_fix .btn_start i{display: inline-block;width: 32px;height: 56px;font-size: 26px;line-height: 54px;vertical-align: top}
           .layer_fix .sub_title{display: block;margin:30px 0 10px 0;font-size:18px}
           .space_or{height:56px;margin-bottom:8px}
           .space_or:after{content:'';position:absolute;top:50%;left:0;width:100%;height:1px;background:rgba(0,0,0,0.08)}
           .space_or span{width:60px;height:56px;margin:0 0 0 -25px;font-size:16px;line-height:56px}
           .layer_w .btn_link{height:56px;font-size:16px;line-height:56px}
           .pop_login .link_half{overflow:hidden;position:relative;height:56px;margin-top:9px}
           .pop_login .link_half:after{display:inline-block;content:'';position:absolute;top:21px;left:50%;width:1px;height:16px;background:rgba(0,0,0,0.08)}
           .pop_login .link_half div{height:56px}
           .pop_login .link_half div button, .pop_login .link_half div a{height:56px;font-size:16px;line-height:56px}
           .pop_join .txt_agree{margin:20px 0 2px 0;text-align:center}
           .pop_join .txt_agree a{color:rgba(0,0,0,0.87);text-decoration:underline}
           .pop_pwset .txt_top{margin:6px 0 25px 0;font-size:15px;line-height:26px;text-align:center;letter-spacing:-1px}
           .pop_mem_reserve .link{margin-top:23px;text-align:center}
           .pop_mem_reserve .link button{display:inline-block;height:23px;padding: 0;border: none;border-bottom: 1px solid rgba(0,0,0,0.87);background: none;font-size:15px;line-height:23px;color:rgba(0,0,0,0.87);letter-spacing:-1px}
        
           .pop_mem_reserve .link span{display:inline-block}
        
           .layer_fix {font-size:15px;line-height:26px;color:rgba(0,0,0,0.87)}
           .layer_fix .fix_title{display:block !important;margin-bottom:16px;}
           .layer_fix section{width:336px;margin:100px auto 0 auto}
           .layer_fix .fix_title .logo{width: 112px;height: 44px;background: url(//image.goodchoice.kr/images/web_v3/ic_bi_yeogi_250px.png) 50% 50% no-repeat;background-size: 112px 23px;text-indent: -9999px;}
           .layer_fix .fix_title strong{font-size:24px;font-weight:bold}
           .layer_fix .fix_title button{margin-right:-14px}
           .layer_fix .btn_start{height:56px;font-size:16px;line-height:56px}
           .layer_fix .btn_start span i{top: 1px;padding-right: 7px;font-size: 26px}
           .layer_fix .btn_link{height:56px;font-size:16px;line-height:56px}
        } /* Media query Close */

        /* 팝업 */
        .fix_title{position:fixed;top:0;left:0;right:0;z-index:300;width:100%;height:44px;background:#fff;font-size:18px;line-height:44px;text-align:center}
        /*.fix_title{position:fixed;top:0;left:0;right:0;z-index:300;width:100%;height:44px;border-bottom:1px solid rgba(0,0,0,0.08);background:rgb(250,250,250);font-size:18px;line-height:44px;text-align:center}*/
        .fix_title button,.fix_title .close{display:inline-block;position:absolute;top:0;right:0;width:44px;height:44px;border:none;background:url('//image.goodchoice.kr/images/web_v3/ico_close.png') 50% 50% no-repeat;background-size:24px auto;text-indent:-9999px}
        .layer{display:none}
        .alert_msg{display:none;position:fixed;top:0;right:0;bottom:0;left:0;z-index:2000;background:rgba(50,50,50,0.5)}
        .alert_msg .msg{position:absolute;top:50%;left:50%;width:280px;margin-left:-140px;border-radius:4px;background:#fff}
        .alert_msg .msg .text{padding:21px 24px;font-size:16px;line-height:25px}
        .alert_msg .msg .btn_center{text-align:center}
        .alert_msg .msg .btn_center a,.alert_msg .msg .btn_center button{display:inline-block;padding:15px 19px;border:none;background:none;font-size:14px;font-weight:bold;color:rgb(0,121,107)}
        .event-el{position: absolute;top: 0;right: 0;bottom: 0;left: 0;z-index: 1;background: rgba(0,0,0,0.001);}
        
        @media all and (min-width:1024px){
           .fix_title{display:none}
           .alert_msg .msg{width:368px;margin-left:-184px;border-radius:4px}
           .alert_msg .msg .text{padding:31px 32px 21px 32px;font-size:18px}
           .alert_msg .msg .btn_center a,.alert_msg .msg .btn_center button{display:inline-block;width:304px;height:56px;margin-bottom:24px;padding:0;border:1px solid rgb(242,17,76);border-radius:4px;background:none;color:rgb(230,28,81);font-size:16px;line-height:56px;font-weight:bold}
        } /* Media query Close */
        
        /* 팝업 - 2버튼 */
        /*.pop_twobtn{position:fixed;top:50%;left:50%;z-index:430;width:280px;margin:0 0 0 -140px;background:#fff;border-radius:4px}*/
        .pop_twobtn {
           position: fixed !important;
           top: 50% !important;
           left: 50% !important;
           z-index: 430 !important;
           bottom: inherit !important;
           width: 280px;
           margin: 0 0 0 -140px;
           background: #fff;
           border-radius: 4px;
        }
        .pop_twobtn .text{padding:20px 24px;font-size:14px;line-height:26px}
        .pop_twobtn .btn_wrap{padding-right:10px;border-top:1px solid rgba(0,0,0,0.08);text-align:right}
        .pop_twobtn .btn_wrap button{height:48px;padding:0 10px;border:none;background:none;font-size:14px;font-weight:bold;color:rgba(0,0,0,0.56)}
        @media all and (min-width:1024px){
           .pop_twobtn{position:fixed;top:50%;left:50%;width:360px;margin:0 0 0 -180px}
           .pop_twobtn .text{padding:30px 38px;font-size:16px}
           .pop_twobtn .btn_wrap{padding-right:15px}
           .pop_twobtn .btn_wrap button{height:48px;padding:0 15px;font-size:15px}
        }
        
        /* 팝업 - 고정 */
        .pop_fix{position:fixed;top:0;right:0;bottom:0;left:0;z-index:430;background:#fff}
        .pop_fix .fix_cont{overflow:hidden;position:absolute;z-index:1;top:44px;bottom:0;left:0;width:100%;margin:0 0 0 0}
        @media all and (min-width:1024px){
           .pop_fix{overflow:hidden;position:fixed;top:50%;right:auto;left:50%;bottom:auto;width:529px !important;height:592px;margin:-296px 0 0 -265px !important;border-radius:4px}
           .pop_fix .fix_title{display:block;position:absolute;top:0;left:0;height:64px;padding:0 0 0 32px;background:#fff;font-size:18px;font-weight:bold;line-height:64px;text-align:left}
           .pop_fix .fix_title button{top:10px;right:25px}
           .pop_fix .fix_cont{overflow:hidden;position:absolute;z-index:1;top:64px;bottom:0;left:0;width:100%;margin:0 0 0 0}
        }

        /* Shadow - Popup */
        .box_shadow{
           -webkit-box-shadow:0px 3px 5px 0px rgba(0,0,0,0.2);
           -moz-box-shadow:0px 3px 5px 0px rgba(0,0,0,0.2);
           box-shadow:0px 3px 5px 0px rgba(0,0,0,0.2);
        }
        
        .bg_pink{background:rgb(237,120,141)}
        .bg_mint{background:#009abd;}
        
        /* Button style */
        .btn_red{display:inline-block;border:1px solid rgb(242,17,76);border-radius:4px;background:#fff;font-size:16px;font-weight:normal;color:rgb(230,28,81);text-align:center;box-sizing:border-box;vertical-align:top;}
        .btn_red_fill{display:inline-block;border:none;border-radius:4px;font-size:16px;color:#fff;text-align:center;box-sizing:border-box;vertical-align:top;
           background: #ff0055; 
           background: -moz-linear-gradient(top,  #ff0055 0%, #e62243 100%);
           background: -webkit-linear-gradient(top,  #ff0055 0%,#e62243 100%);
           background: linear-gradient(to bottom,  #ff0055 0%,#e62243 100%);
           filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ff0055', endColorstr='#e62243',GradientType=0 ); 
        }
        
        /* Paging */
        .paging{display:block;margin-top:20px;padding:24px 0 48px 0;border-top:1px solid rgba(0,0,0,0.04);text-align:center}
        .paging .on{border:1px solid rgba(0,0,0,0.27);border-radius:4px;font-weight:bold;color:rgba(0,0,0,0.87)}
        .paging button{width:32px;height:32px;box-sizing:inherit;align-items:center;border-radius:3px;border:none;box-shadow:none;background:none;font-size:13px;line-height:1.5;text-align:center;}
        .paging .prev{background:url('//image.goodchoice.kr/images/web_v3/ico_arr_lt_4.png') 50% 50% no-repeat;background-size:10px auto;text-indent:-9999px;margin-right:5px}
        .paging .next{background:url('//image.goodchoice.kr/images/web_v3/ico_arr_gt_4.png') 50% 50% no-repeat;background-size:10px auto;text-indent:-9999px;margin-left:5px}
        .paging .ellip{background:url('//image.goodchoice.kr/images/web_v3/ico_ellip.png') 50% 50% no-repeat;cursor:default}
        
        @media all and (min-width:1024px){
           .paging{padding:32px 0 0 0;}
           .paging button{line-height:0.5;}
        }

        .pop_full{display:none;position:fixed;top:0;right:0;bottom:0;left:0;z-index:420;background:rgb(235,235,235)}
        .pop_full .iscroll_cp{overflow:hidden;position:absolute;z-index:1;top:44px;bottom:0;left:0;width:100%;margin:0 0 0 0}
        .pop_full .scroller{text-align:center}
        .pop_mem,.pop_evt{padding-top:8px}
        .pop_mem .benefit,.pop_evt .benefit{overflow:hidden;margin:0 8px 8px;text-align:left;border-radius:4px}
        .pop_mem .benefit:first-child,.pop_evt .benefit:first-child{margin-top:8px}
        .pop_mem .benefit strong,.pop_evt .benefit strong{display:block;height:48px;padding-left:16px;font-size:14px;line-height:48px;color:#fff}
        .pop_mem .benefit div,.pop_evt .benefit div{margin:0 2px 2px;padding:21px 14px 19px 14px;background:#fff;font-size:14px;line-height:22px;color:rgba(0,0,0,0.56)}
        .pop_useinfo .iscroll_cp{background:#fff}
        .pop_useinfo section{margin:0 16px 0 16px;padding-bottom:18px;;border-bottom:1px solid rgba(0,0,0,0.08);font-size:15px;color:rgba(0,0,0,0.56);text-align:left}
        .pop_useinfo section strong{display:block;margin:30px 0 10px 0}
        .pop_useinfo section .dot_txt li{line-height:24px}
        .pop_useinfo section:last-child{border-bottom:none}
        
        @media all and (min-width:1024px){
           .pop_full{overflow:hidden;position:fixed;top:50%;right:auto;bottom:auto;left:50%;width:368px;height:500px;margin:-250px 0 0 -200px;border-radius:4px;background:#fff}
           .pop_full .iscroll_cp{top:64px;bottom:0;left:0;width:100%;margin:0 0 0 0}
           .pop_full .fix_title{display:block !important;position:relative;height:64px;padding-left:32px;background:#fff;border-bottom:1px solid rgba(0,0,0,0.08);font-size:18px;line-height:64px;font-weight:bold;text-align:left}
           .pop_full .fix_title button{top:10px;right:17px}
           .pop_mem,.pop_evt{padding-top:0}
           .pop_mem .benefit,.pop_evt .benefit{margin:0 10px 8px 10px}
           .pop_mem .benefit:first-child,.pop_evt .benefit:first-child{margin-top:8px}
           .pop_mem .benefit strong,.pop_evt .benefit strong{display:block;height:48px;padding-left:16px;font-size:14px;line-height:48px;color:#fff}
           .pop_mem .benefit div,.pop_evt .benefit div{margin:0 2px 2px;padding:21px 14px 19px 14px;background:#fff;font-size:14px;line-height:22px;color:rgba(0,0,0,0.56)}
           .pop_useinfo{width:529px;margin:-250px 0 0 -265px}
           .pop_useinfo .iscroll_cp{background:#fff}
           .pop_useinfo section{margin:0 32px 0 32px;padding-bottom:18px;;border-bottom:1px solid rgba(0,0,0,0.08);font-size:16px;color:rgba(0,0,0,0.56);text-align:left}
           .pop_useinfo section strong{display:block;margin:37px 0 10px 0}
           .pop_useinfo section .dot_txt li{line-height:26px}
           .pop_useinfo section:last-child{border-bottom:none}
        
        } /* Media query Close */
        
        .detail_info .default_info a{display:none !important;}
        .layer.pop_full.pop_mem article{display:block;background:#009abd;overflow:hidden;margin:0 8px 8px;text-align:left;border-radius:4px;margin-top:8px;
           background:-moz-linear-gradient(left,#009abd 0%, #12b1a2 100%);
           background:-webkit-linear-gradient(left,#009abd 0%,#12b1a2 100%);
           background:linear-gradient(to right,#009abd 0%,#12b1a2 100%);
        }
        .layer.pop_full.pop_mem article strong{display:block;height:48px;padding-left:16px;font-size:14px;font-weight:normal;line-height:48px;color:#fff;}
        .layer.pop_full.pop_mem article div.stage{margin:0 2px 2px;padding:21px 14px 19px 14px;background:#fff;font-size:14px;line-height:22px;color:rgba(0,0,0,0.56);}
        div.special_popup{display:none;}
        .pop_specialday_alert,.pop_specialday_alert h5{font-size:14px;}
        .pop_specialday_alert p.special_date{padding:15px 0px;font-size:14px;color:#ff0055;}
        .pop_specialday_alert p.special_content{font-size:14px;color:rgba(0,0,0,0.56);}
        section.table_wrap.special_price .price_top {margin-bottom: 20px}
        .owl-item em.mark span i{display:none;}
        .owl-item .price em{display:block;text-decoration:line-through}
        .owl-item em.mark span{background:none;}
        
        @media all and (min-width:1024px){
           .pop_specialday_alert,.pop_specialday_alert h5,
           .pop_specialday_alert p.special_date,
           .pop_specialday_alert p.special_content{font-size:16px;}
        }
        
        .place_btn-img {
            display: inline-block;
            padding: 5px 5px;
            background-color: rgba( 255, 255, 255, 0 );
            background-image : url('img/icon/imgicon50.png');
            margin-bottom: 5px;
            outline:0px;
            border:0px;
            Height:50px;
            Width:50px;
        }

        /* Initialize Swiper */
        .swiper-container {
          width: 100%;
          height: 100%;
        }

        .swiper-slide {
          font-size: 18px;
          height: auto;
          -webkit-box-sizing: border-box;
          box-sizing: border-box;
          padding: 30px;
        }

      .swiper-container-img {
        width: 100%;
        height: 100%;
      }
    </style>

    
    <!-- breadcrumb start-->
        <section class="breadcrumb breadcrumb_bg">
            <div class="container">
                <div class="row" style="height:300px">
                    <div class="col-lg-12" style="height:300px">
                        <div class="breadcrumb_iner" style="height:300px">
                            <div class="breadcrumb_iner_item text-center">
                                <h2>View</h2>
                                <p>home . View</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <!-- breadcrumb start-->

    <!--::gallery part start::-->
     <section class="our_gallery section_padding">
        <div class="container">
            <div class="row justify-content-center" style="height:50px">
                <div class="col-xl-6">
                    <div class="section_tittle text-center" style="width:600px">
                        <h2><%=this.resname %></h2>
                        <p><%=this.resaddr %></p>
                    </div>
                </div>
            </div>

            <section class="blog_area single-post-area section_padding">                                            
                <div class="d-none d-sm-block mb-5 pb-4">                
                                <div id="map" style="margin:0 auto; width:800px; max-width:100%; height:400px;"></div>
                            </div>
                <div class="section_tittle text-center">
                    <font style="font-family: Malgun Gothic,'맑은 고딕',Helvetica,AppleGothic,dotum,'돋움',sans-serif; font-size: 30px;font-weight:bold;color:royalblue">
                        사장님 한마디<asp:Label ID="Label1" Name="lbl" runat="server"></asp:Label>
                    </font>
                </div>
                <div class="quote-wrapper">
                    <div class="quotes">
                        <h6>
                            <%=this.rescom %>
                        </h6>
                    </div>
                </div>
            </section>

            <div class="row">
                <div class="col-lg-12">
                    <div class="card-columns">
                        <div class="card">
                            <a href="<%=this.resimg1 %>" class="gallery_img">
                               <img src="<%=this.resimg1 %>" class="card-img-top" alt="">
                            </a>
                        </div>
                        <div class="card">
                            <a href="<%=this.resimg2 %>" class="gallery_img">
                                <img src="<%=this.resimg2 %>" class="card-img-top" alt="">
                            </a>
                        </div>
                        <div class="card">
                            <a href="<%=this.resimg3 %>" class="gallery_img">
                                <img src="<%=this.resimg3 %>" class="card-img-top" alt="">
                            </a>
                        </div>
                        <div class="card">
                            <a href="<%=this.resimg4 %>" class="gallery_img">
                                <img src="<%=this.resimg4 %>" class="card-img-top" alt="">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::gallery part end::-->

    <!-- booking part start-->
    <section class="booking_part">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="booking_menu">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                            <a class="nav-link active" id="room_info-tab" data-toggle="tab" href="#room_info" role="tab" aria-controls="room_info" aria-selected="true">객실 정보</a>
                            </li>
                            <li class="nav-item">
                            <a class="nav-link" id="detail_info-tab" data-toggle="tab" href="#detail_info" role="tab" aria-controls="detail_info" aria-selected="false">숙소 정보</a>
                            </li>
                            <li class="nav-item">
                            <a class="nav-link" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review" aria-selected="false">리뷰
                            </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <form id="form" runat="server">
                <div class="col-lg-12">
                    <div class="booking_content">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="room_info" role="tabpanel" aria-labelledby="room_info-tab">
                                <div class="booking_form">
                                        <!--top place start-->
                                        <section class="top_place section_padding">
                                            <div class="container">
                                                <div class="row">                                                  
                                                    <asp:Repeater ID="Repeater1" runat="server">
                                                        <ItemTemplate>                                                             
                                                            <div class="col-lg-6 col-md-6">
                                                        <div class="single_place">
                                                            <img src="<%# Eval("rmimg1") %>" Height="396" Width="555">
                                                            <div class="hover_Text d-flex align-items-end justify-content-between">
                                                                <div class="hover_text_iner"> 
                                                                        <input value="수정" class="place_btn" type="button" style="outline:0px;border:0px;<%= this.btn_visible %>" onclick="location.href='ModifyRm.aspx?rmidx=<%# Eval("rmidx") %>&residx=<%=this.residx %>'"/>&nbsp;&nbsp;
                                                                        <input value="삭제" class="place_btn" type="button" style="outline:0px;border:0px;<%= this.btn_visible %>" onclick="location.href='DeleteRm.aspx?rmidx=<%# Eval("rmidx") %>'"/><br /><br /><br /><br /><br /><br />
                                                                        <input value="객실 이용 안내" class="place_btn" id="myBtn" type="button" style="outline:0px;border:0px"/>
                                                                        <h3><%# Eval("rmname") %></h3>
                                                                        <p><%# "&nbsp;"+Eval("rmprc") + "원"%></p>
                                                                    </div><br />
                                                                    <button class="place_btn-img" id="imgBtn" type="button" />
                                                            </div>
                                                            </div>
                                                        </div>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </div>
                                            </div>
                                                    <!-- 방 추가 -->
                                                    <a href="Room2.aspx?residx=<%= this.residx %>" class="btn_1 text-cnter" style="<%= this.btn_visible %>">방 추가</a>
                                        </section>
                                        <!--top place end-->
                                </div>
                            </div>
                            </form>

                            <div class="tab-pane fade" id="detail_info" role="tabpanel" aria-labelledby="detail_info-tab">
                                <div class="booking_form">
                                        <div>
                                            <input value="기본 정보"
                                                class="btn_1 d-none d-lg-block" type="button" style="outline:0px;border:0px"
                                                onclick="if (this.parentNode.getElementsByTagName('div')[0].style.display != 'block')
                                                         {
                                                             this.parentNode.getElementsByTagName('div')[0].style.display = 'block';
                                                             this.value = '기본 정보　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　';
                                                         } else {
                                                             this.parentNode.getElementsByTagName('div')[0].style.display = 'none';
                                                             this.value = '기본 정보　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　';
                                                         }"/>
                                            <div style="display: block;"><br />
                                                <h3>[오시는 길]</h3>
                                                <ul>
                                                    <li><%= this.resinfo %></li>
                                                </ul>
                                                <br /><br />                                              
                                                
                                                <h3>숙소 이용 규칙</h3>
                                                <ul>
                                                    <li>객실 내 식음 금지</li>
                                                    <li>귀중품에 대한 분실 책임은 본인에게 있음</li>
                                                    <li>귀중품은 직원에게 확인시키고 로커에 꼭 보관</li>
                                                    <li>시설 및 공용 물품 파손 시 변상 요구 가능</li>
                                                    <li>숙박 일수가 늘어날 시 퇴실일 전에 직원에게 가능 여부 확인</li>
                                                    <li>건물 내 거실은 PM11:00 소등 / PM11:00 이후 다른 게스트분들에게 피해가 가지 않도록 최대한 정숙</li>
                                                    <li>객실 내 화재 위험으로 촛불, 버너 등의 화기 사용은 절대 불가</li>
                                                    <li>게스트분들의 안전을 책임지기 위해 CCTV가 거실에 24시간 가동</li>
                                                    <li>타인에게 피해나 불쾌감을 주는 행위 또는 게스트하우스 이용규정을 지키지 않을 경우 강제 퇴실 조치</li>
                                                    <li>시설물을 파손하거나 침구류 훼손 및 오염(세탁 불가능) 시 전액 배상</li>
                                                    <li>보호자 동반 없는 미성년자 입실 불가 (업체 문의 필수)</li>
                                                </ul><br /><br />
                                                
                                                <h3>취소 및 환불 규정</h3>
                                                <ul>
                                                    <li>체크인일 기준 7일 전 : 100% 환불</li>
                                                    <li>체크인일 기준 6 ~ 4일 전 : 50% 환불</li>
                                                    <li>체크인일 기준 3일 전 ~ 당일 및 No-Show : 환불불가</li>
                                                    <li>취소, 환불시 수수료가 발생할 수 있습니다</li>
                                                </ul><br /><br />
                                                
                                                <h3>확인 사항 및 기타</h3>
                                                <ul>
                                                    <li>시즌별 객실 가격 상이하오니 확인바랍니다</li>
                                                    <li>위의 정보는 게스트하우스 사정에 따라 변경될 수 있습니다</li>
                                                    <li>해당 이미지는 실제와 상이 할 수 있습니다</li>
                                                    <li>예약 확정 이후의 취소는 취소환불규정에 의거하여 적용됩니다</li>
                                                </ul>
                                                <br /><br />                                                       
                                                </div>                                                
                                        </div><br />

                                        <div>
                                            <input value="편의시설 및 서비스   　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　" 
                                                class="btn_1 d-none d-lg-block" type="button" style="outline:0px;border:0px"
                                                onclick="if (this.parentNode.getElementsByTagName('div')[0].style.display != '')
                                                         {
                                                             this.parentNode.getElementsByTagName('div')[0].style.display = '';
                                                             this.value = '편의시설 및 서비스   　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　';
                                                         } else {
                                                             this.parentNode.getElementsByTagName('div')[0].style.display = 'none';
                                                             this.value = '편의시설 및 서비스   　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　';
                                                         }"/>
                                            <div style="display: none;"><br />&nbsp;
                                                 <img src="<%= this.b_bbq %>">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <img src="<%= this.b_brkfat %>">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <img src="<%= this.b_event %>">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <img src="<%= this.b_paklot %>">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <img src="<%= this.b_pet %>">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <img src="<%= this.b_resair %>">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <img src="<%= this.b_resbat %>">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <img src="<%= this.b_resfri %>">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <img src="<%= this.b_restv %>">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <img src="<%= this.b_somke %>">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <img src="<%= this.b_wasmac %>">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <img src="<%= this.b_wifi %>">
                                            </div>
                                        </div>
                                </div>
                            </div>
                                  <br /><br />                                              

                            <div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
                                <div class="booking_form">
                                                    <div class="section_tittle text-center">
                                    <div class="place_review">
                                        <font size="10"><script>Score(<%= this.avgscore %>);</script></font>                               
                                    </div>&nbsp;
                                                        <span style="color:coral;font-size:30px;font-weight:bold">(<%= this.avgscore %>)</span><br /><br />
                                                        <span style="font-size:20px;font-weight:bold">총 <%= this.reviewcnt %>개의 리뷰가 등록되어있습니다.</span>
                                                    </div>

                                    <!--review start-->                                    
                                        <div class="comments-area">
                                            <asp:Repeater ID="Repeater2" runat="server">
                                                <ItemTemplate>
                                            <div class="comment-list">
                                                <div class="single-comment justify-content-between d-flex">
                                                    <div class="user justify-content-between d-flex">
                                                        <div class="desc">
                                                            <p class="comment">
                                                                <%# Eval("recom") %>
                                                            </p>
                                                            <div class="d-flex justify-content-between">
                                                                <div class="d-flex align-items-center">
                                                                    <h5><%# Eval("muid") %></h5>
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <div class="place_review">
                                                                            <script>Score(<%# Eval("resscore") %>);</script>
                                                                        </div>
                                                                    <p class="date"><%# Eval("repodate") %></p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>              
                                                    </ItemTemplate>
                                            </asp:Repeater>
                                        <!--review end-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    </section>

    <!-- Header part end-->

    <!-- 객실소개 -->
    <!-- 모달 아이디, 닫기 아이디 중복 -->
    <section>
        <div>
            <asp:Repeater ID="Repeater3" runat="server">
                <ItemTemplate>
            <div style="display: none;" id="myModal"> 
                <div class="bg_dimm" style="display: block;">&nbsp;</div>
                <div class="layer pop_full pop_useinfo" style="display: block;">
                    <div class="fix_title">
                        객실 이용 안내
                        <button id="myBtn2">닫기</button>
                    </div>
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <section>
                                    <strong>기본정보</strong>
                                    <ul class="dot_txt">
                                        <li><%# Eval("rmname") %></li>
                                        <li>인원 : <%# Eval("rmpeo") + "명" %> </li>
                                        <li><font color="red">(1인 추가 가격 : <%# Eval("rmprc") + "원"%>)</font></li>
                                    </ul>
                                </section>
                                <section>
                                    <strong>객실소개</strong>
                                    <ul class="dot_txt">
                                        <li>
                                            <%# Eval("rmcom") %>
                                        </li>
                                     </ul>
                                </section>
                                <section>
                                    <strong>편의시설</strong>
                                    <ul class="dot_txt">
                                        <li>
                                            <span style="font-size:15px"><%= this.rmbat %><%= this.rmfri %><%= this.rmtv %><%= this.rmair %></span>
                                        </li>
                                    </ul>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
            </div>                          
                </ItemTemplate>
                </asp:Repeater>
        </div>
    </section>

    <!-- 이미지 버튼 -->
    <section>
        <asp:Repeater ID="Repeater4" runat="server">
            <ItemTemplate>
        <div style="display: none;" id="imgModal">             
            <div class="bg_dimm-img" style="display: block;">&nbsp;</div>
            <div class="layer pop_full pop_useinfo" style="display: block;">
                <div class="fix_title">
                    객실 이미지
                    <button id="imgBtn2">닫기</button>
                </div>
                <div class="client_review_slider-img owl-carousel">
                    <div class="single_review_slider">
                        <img src="<%# Eval("rmimg1") %>" height="436">
                    </div>
                    <div class="single_review_slider">
                        <img src="<%# Eval("rmimg2") %>" height="436">
                    </div>
                    <div class="single_review_slider">
                        <img src="<%# Eval("rmimg3") %>" height="436">
                    </div>
                </div>
            </div>
        </div>            
                </ItemTemplate>
        </asp:Repeater>
    </section>
    
    <script>
        var map = new naver.maps.Map("map", {
            center: new naver.maps.LatLng(37.3595316, 127.1052133),
            zoom: 10,
            mapTypeControl: true
        });
        
        var infoWindow = new naver.maps.InfoWindow({
            anchorSkew: true
        });
        
        map.setCursor('pointer');
        
        // 검색 버튼을 눌렀을 때 주소 값으로 검색
        function searchAddressToCoordinate(address) {
            naver.maps.Service.geocode({
                query: address
            }, function(status, response) {
                if (status === naver.maps.Service.Status.ERROR) {
                    return alert('Something Wrong!');
                }
        
                if (response.v2.meta.totalCount === 0) {
                    return alert('정확한 주소를 입력하세요.');
                }
        
                var htmlAddresses = [],
                    item = response.v2.addresses[0],
                    point = new naver.maps.Point(item.x, item.y);
        
                if (item.roadAddress) {
                    htmlAddresses.push('[도로명 주소] ' + item.roadAddress);
                }
        
                if (item.jibunAddress) {
                    htmlAddresses.push('[지번 주소] ' + item.jibunAddress);
                }
        
                if (item.englishAddress) {
                    htmlAddresses.push('[영문명 주소] ' + item.englishAddress);
                }
        
                infoWindow.setContent([
                    '<div style="padding:10px;min-width:200px;line-height:150%;">',
                    '<h4 style="margin-top:5px;">검색 주소 : '+ address +'</h4><br /',
                    htmlAddresses.join('<br />'),
                    '</div>'
                ].join('\n'));
        
                map.setCenter(point);
                infoWindow.open(map, point);
            });
        }
        
        // 지도가 나타나고 초기값 설정
        function initGeocoder() {
            map.addListener('click', function(e) {
                searchCoordinateToAddress(e.coord);
            });
        
            $('#address').on('keydown', function(e) {
                var keyCode = e.which;
        
                if (keyCode === 13) { // Enter Key
                    searchAddressToCoordinate($('#address').val());
                }
            });
        
            $('#submit').on('click', function(e) {
                e.preventDefault();
        
                searchAddressToCoordinate($('#address').val());
            });
        
            searchAddressToCoordinate('<%= this.resaddr %>');
        }
        
        // 검색한 키워드로 주소를 만듬
        function makeAddress(item) {
            if (!item) {
                return;
            }
        
            var name = item.name,
                region = item.region,
                land = item.land,
                isRoadAddress = name === 'roadaddr';
        
            var sido = '', sigugun = '', dongmyun = '', ri = '', rest = '';
        
            if (hasArea(region.area1)) {
                sido = region.area1.name;
            }
        
            if (hasArea(region.area2)) {
                sigugun = region.area2.name;
            }
        
            if (hasArea(region.area3)) {
                dongmyun = region.area3.name;
            }
        
            if (hasArea(region.area4)) {
                ri = region.area4.name;
            }
        
            if (land) {
                if (hasData(land.number1)) {
                    if (hasData(land.type) && land.type === '2') {
                        rest += '산';
                    }
        
                    rest += land.number1;
        
                    if (hasData(land.number2)) {
                        rest += ('-' + land.number2);
                    }
                }
        
                if (isRoadAddress === true) {
                    if (checkLastString(dongmyun, '면')) {
                        ri = land.name;
                    } else {
                        dongmyun = land.name;
                        ri = '';
                    }
        
                    if (hasAddition(land.addition0)) {
                        rest += ' ' + land.addition0.value;
                    }
                }
            }
        
            return [sido, sigugun, dongmyun, ri, rest].join(' ');
        }
        
        function hasArea(area) {
            return !!(area && area.name && area.name !== '');
        }
        
        function hasData(data) {
            return !!(data && data !== '');
        }
        
        function checkLastString (word, lastString) {
            return new RegExp(lastString + '$').test(word);
        }
        
        function hasAddition (addition) {
            return !!(addition && addition.value);
        }
        
        naver.maps.onJSContentLoaded = initGeocoder;
         </script>

    <script src="../js/plus/swiper.min.js"></script>
    <script>
        <!-- 모달 아이디 -->
        // Get the modal
        var modal = document.getElementById('myModal');
        var imodal = document.getElementById('imgModal');
 
        // Get the button that opens the modal
        var btn = document.getElementById("myBtn");
        var btn2 = document.getElementById("myBtn2");

        var ibtn = document.getElementById("imgBtn");
        var ibtn2 = document.getElementById("imgBtn2");
 
        // Get the <span> element that closes the modal
        var div = document.getElementsByClassName("bg_dimm")[0];
        var imgdiv = document.getElementsByClassName("bg_dimm-img")[0];
 
        // When the user clicks on the button, open the modal 
        btn.onclick = function() {
            modal.style.display = "block";
        }

        btn2.onclick = function() {
            modal.style.display = "none";
        }

        ibtn.onclick = function() {
            imodal.style.display = "block";
        }

        ibtn2.onclick = function() {
            imodal.style.display = "none";
        }

        // When the user clicks on <span> (x), close the modal
        div.onclick = function() {
            modal.style.display = "none";
        }

        imgdiv.onclick = function() {
            imodal.style.display = "none";
        }
 
        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }

            //if (event.target == imodal) {
            //    imodal.style.display = "none";
            //}
        }

        // Initialize Swiper
        var swiper = new Swiper('.swiper-container', {
          direction: 'vertical',
          slidesPerView: 'auto',
          freeMode: true,
          scrollbar: {
            el: '.swiper-scrollbar',
          },
          mousewheel: true,
        });
    </script>
</asp:Content>
