<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- banner part start-->
    <section class="banner_part">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-10">
                    <div class="banner_text text-center">
                        <div class="banner_text_iner">
                            <h1>YuhanBnB</h1>
                            <p>각 지역 게스트 하우스를 검색하여 비교해보세요.</p>
                            <a href="search.aspx" class="btn_1">둘러보기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
    <section class="booking_part">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="booking_content">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="hotel" role="tabpanel" aria-labelledby="hotel-tab">
                                <div class="booking_form">                                              
                                    <form id="form1" runat="server" action="search.aspx" method="post">
                                        <div class="form-row">
                                             <div class="form_colum" >
                                                <select class="nc_select" name="lcode" required>
                                                    <option value="">지역</option>
                                                    <option value="1">서울</option>
                                                    <option value="2">경기</option>
                                                    <option value="3">인천</option>
                                                    <option value="4">강원</option>
                                                    <option value="5">부산</option>
                                                    <option value="6">경상</option>
                                                    <option value="7">전라</option>
                                                    <option value="8">충청</option>
                                                    <option value="9">대전</option>
                                                    <option value="10">제주</option>
                                                </select>
                                            </div>

                                             <div class="form_colum">
                                                <select class="nc_select" name="people" required>
                                                    <option value="">인원 </option>
                                                    <option value="1">1인</option>
                                                    <option value="2">2인</option>
                                                    <option value="3">3인</option>
                                                    <option value="4">4인</option>
                                                    <option value="5">5인 이상</option>
                                                </select>
                                            </div>

                                             <div class="form_txt">
                                                 <input type="text" name="iword" placeholder="검색" style="height:50px;width:630px;color:#2493e0;border-style:double;" autofocus="autofocus" required />
                                             </div>

                                            <div class="form_btn">
                                                <input type="hidden" value="search_post" name="controller" />
                                                <input type="submit" value="검색" class="btn_1" style="outline:0px;border:0px"/>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
    <section class="top_place section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>지역별</h2>
                        <p>어느 지역으로 여행하실 계획이신가요?</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <div class="single_place">
                        <img src="img/loc/single_place_1.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="search.aspx?lcode=1&controller=search_get" class="place_btn">자세히</a>
                                <h3>서울</h3>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4">
                    <div class="single_place">
                        <img src="img/loc/single_place_2.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="search.aspx?lcode=2&controller=search_get" class="place_btn">자세히</a>
                                <h3>경기</h3>
                            </div> 
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4">
                    <div class="single_place">
                        <img src="img/loc/single_place_3.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="search.aspx?lcode=3&controller=search_get" class="place_btn">자세히</a>
                                <h3>인천</h3>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4">
                    <div class="single_place">
                        <img src="img/loc/single_place_4.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="search.aspx?lcode=4&controller=search_get" class="place_btn">자세히</a>
                                <h3>강원</h3>                    
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4">
                    <div class="single_place">
                        <img src="img/loc/single_place_5.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="search.aspx?lcode=5&controller=search_get" class="place_btn">자세히</a>
                                <h3>부산</h3>    
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4">
                    <div class="single_place">
                        <img src="img/loc/single_place_6.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="search.aspx?lcode=6&controller=search_get" class="place_btn">자세히</a>
                               <h3>경상</h3>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4">
                    <div class="single_place">
                        <img src="img/loc/single_place_7.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="search.aspx?lcode=7&controller=search_get" class="place_btn">자세히</a>
                                <h3>전라</h3>    
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4">
                    <div class="single_place">
                        <img src="img/loc/single_place_8.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="search.aspx?lcode=8&controller=search_get" class="place_btn">자세히</a>
                                <h3>충청</h3>    
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4">
                    <div class="single_place">
                        <img src="img/loc/single_place_9.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="search.aspx?lcode=9&controller=search_get" class="place_btn">자세히</a>
                                <h3>대전</h3>    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
           
    <section class="event_part section_padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="event_slider owl-carousel" >
                        <asp:Repeater ID="Repeater1" runat="server">                            
                            <ItemTemplate>
                        <div class="single_event_slider">
                            <div class="row justify-content-end">
                                <div class="col-lg-6 col-md-6">
                                    <div class="event_slider_content">
                                        <h5>최근 등록된 숙소</h5>
                                        <h2><%# Eval("resname") %></h2>
                                        <p><%# Eval("rescom") %>
                                        </p>
                                        <p>등록일: <span><%# Eval("respodate") %></span> </p>
                                        <p>가격: <span><%# Eval("price") %></span> </p>
                                        <p>주소: <span> <%# Eval("resaddr") %></span> </p>
                                        <div class="rating">
                                            <span>평점: </span>
                                            <div class="place_review">
                                                <script>Score(<%# Eval("avgscore") %>);</script>
                                            </div>
                                        </div>
                                        <a class="btn_1" href="view.aspx?residx=<%# Eval("residx") %>">자세히</a>
                                    </div>
                                </div>
                            </div>
                        </div>                                     
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="hotel_list section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h1>인기순</h1>
                        <p>많은 고객분들이 자주이용하시는 숙소에요.</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>     
                        <div class="col-lg-4 col-sm-6">
                            <div class="single_ihotel_list">
                                <img src="<%# Eval("resimg1") %>" alt="">
                                <div class="hotel_text_iner">
                                    <h3> <a href="view.aspx?residx=<%# Eval("residx") %>"> <%# Eval("resname") %></a></h3>
                                    <div class="place_review">
                                        <script>Score(<%# Eval("resscore") %>);</script>
                                        <span style="font-size:15px">&nbsp;<%# Eval("reviewcnt") %>개의 리뷰가 있습니다.</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>
  
    <section class="client_review section_padding">
        <div class="container">
            <div class="row ">
                <div class="col-xl-6">
                    <div class="section_tittle">
                        <h2>최근 작성된 리뷰</h2>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="client_review_slider owl-carousel">
                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>
                                <div class="single_review_slider">
                                    <div class="place_review">
                                        <script>Score(<%# Eval("rescore") %>);</script>                         
                                    </div>
                                    <p> <%# Eval("recom") %></p> 
                                    <h5> - <%# Eval("muid") %></h5>
                                    <p> <%# Eval("postdate") %></p>
                                </div>
                                </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </section>
                                        
    <section class="best_services section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h1>YuhanB&B offered services</h1>
                        <p>유한비엔비는 다음과 같은 서비스를 제공합니다.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <img alt="" src="img/services_1.png">
                        <h3> <a href="#"> Search</a></h3>
                        <p>원하는 숙소를 빠르게 검색해 보세요.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <img alt="" src="img/services_2.png">
                        <h3> <a href="#"> Hosting</a></h3>
                        <p>자신의 집을 등록해 호스트가 되어보세요.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <img alt="" src="img/services_3.png">
                        <h3> <a href="#"> Review</a></h3>
                        <p>숙소의 평점을 보거나 작성해 보세요.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <img alt="" src="img/services_4.png">
                        <h3> <a href="#"> Reservation</a></h3>
                        <p>원하는 숙소가 있다면 지금 바로 예약하세요.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

