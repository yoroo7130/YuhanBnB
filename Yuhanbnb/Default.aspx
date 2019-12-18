<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Martine</title>
    <link rel="icon" href="img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="css/flaticon.css">
    <!-- fontawesome CSS -->
    <link rel="stylesheet" href="fontawesome/css/all.min.css">
    <!-- magnific CSS -->
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/gijgo.min.css">
    <!-- niceselect CSS -->
    <link rel="stylesheet" href="css/nice-select.css">
    <!-- slick CSS -->
    <link rel="stylesheet" href="css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="css/style.css">


    <script src="js/yuhan.js"></script>
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
</head>
<body>
    <form id="form1" runat="server">            
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />

        <asp:Label ID="Label1" runat="server" Text="Label"><%=this.avgscore %></asp:Label><br />
        <asp:Label ID="Label2" runat="server" Text="Label"><%=this.reviewcnt %></asp:Label><br />
        <asp:Image ID="Image1" runat="server" />
        

        <input type="button" value="btn1" style="outline:auto;<%= this.btn_visible %>" />
                                                        <div class="d-none d-sm-block mb-5 pb-4">
                <div id="nmap" style="margin:0 auto; width:1050px; max-width:100%; height:580px;"></div>
            </div>
                                                <script>
                                                   var map = new naver.maps.Map("nmap", {
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
                                                               '<h4 style="margin-top:5px;">검색 주소 : '+ address +'</h4><br />',
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
       
                                                       searchAddressToCoordinate("경기도 부천시 경인로 590");
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
    </form>        
    <!-- jquery plugins here-->
    <script src="js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- magnific js -->
    <script src="js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- masonry js -->
    <script src="js/masonry.pkgd.js"></script>
    <!-- masonry js -->
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/gijgo.min.js"></script>
    <!-- contact js -->
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>
    <script src="js/contact.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>
</body>
</html>
