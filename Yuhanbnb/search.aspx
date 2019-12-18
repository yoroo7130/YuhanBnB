<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" href="css/style.css">
    <style>
          .PagerNormal
          {
            font: 12pt Verdana;
            color: #0066CF;
            border: solid 1px #778899;
            padding: 1px 4px;
            text-decoration:none;
          }
          .PagerCurrent
          {
            font: 12pt Verdana;
            border: solid 1px #778899;
            padding: 1px 4px;
            background-color: #ffffff;
          }
    </style>
    <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row" style="height:300px">
                <div class="col-lg-12" style="height:300px">
                    <div class="breadcrumb_iner" style="height:300px">                        
                        <div class="breadcrumb_iner_item text-center">
                            <h2>Search</h2>
                            <p>home . Search</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!-- search bar start-->
    <form runat="server">
    <section class="booking_part">
        <div class="container">
            <div class="row">
                <div class="col-lg-12" style="left: 0px; top: 0px">
                    <div class="booking_content">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="hotel" role="tabpanel" aria-labelledby="hotel-tab">
                                <div class="booking_form">
                                        <div class="form-row">
                                             <div class="form_colum">
                                                <select class="nc_select" name="lcode">
                                                    <option <%= this.lsel0 %>>지역</option>
                                                    <option value="1" <%= this.lsel1 %>>서울</option>
                                                    <option value="2" <%= this.lsel2 %>>경기</option>
                                                    <option value="3  <%= this.lsel3 %>">인천</option>
                                                    <option value="4" <%= this.lsel4 %>>강원</option>
                                                    <option value="5" <%= this.lsel5 %>>부산</option>
                                                    <option value="6" <%= this.lsel6 %>>경상</option>
                                                    <option value="7" <%= this.lsel7 %>>전라</option>
                                                    <option value="8" <%= this.lsel8 %>>충청</option>
                                                    <option value="9" <%= this.lsel9 %>>대전</option>
                                                    <option value="10" <%= this.lsel10 %>>제주</option>
                                                </select>
                                            </div>

                                             <div class="form_colum">
                                                <select class="nc_select" name="people">
                                                    <option <%= this.psel0 %>>인원 </option>
                                                    <option value="1" <%= this.psel1 %>>1인</option>
                                                    <option value="2" <%= this.psel2 %>>2인</option>
                                                    <option value="3" <%= this.psel3 %>>3인</option>
                                                    <option value="4" <%= this.psel4 %>>4인</option>
                                                    <option value="5" <%= this.psel5 %>>5인 이상</option>
                                                </select>
                                            </div>

                                             <div class="form_txt">
                                              <asp:TextBox ID="txtSearch" runat="server" CssClass="txtSearch" placeholder="숙소명, 주소, 키워드, 이벤트 내용을 통해 검색해 보세요." Font-Size="Large" Height="50px" Width="520px" ForeColor="#2493e0" BorderStyle="Double"></asp:TextBox>                          
                                             </div>

                                            <div class="form_btn">
                                                <input type="submit" class="btn_1" value="검색" style="outline:0px;border:0px" />
                                            </div>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><br />
    <!-- search bar start-->

    <!-- option select start -->    
                <div class="container">
                    <div class="box">
                    <div class="row">
                        <div style="width:25%;float:left;">
                            <table align="center">
                                <tr>
                                    <td style="border-top-left-radius:5px; border-top-right-radius:5px; border-top: solid 2px rgb(0, 180, 222); border-left: solid 2px rgb(0, 180, 222); border-right: solid 2px rgb(0, 180, 222);  text-align:center; width: 31%;" class="w-25"><br />
                                        <div style="font-weight: bold; font-size: 24px; color: rgb(0, 0, 0); text-align:center"> 상세조건</div><br />                                     
						                    <button type="button" onclick="window.location.href='search.aspx'" class="btnreset" style="width:130px; height:50px;">초기화</button><br />                      
                                    </td></tr>                                
                                <tr>
                                    <td style="border-bottom-left-radius:5px; border-bottom-right-radius:5px; border-left: solid 2px rgb(0, 180, 222); border-right: solid 2px rgb(0, 180, 222); border-bottom: solid 2px rgb(0, 180, 222); text-align:center; width: 31%;" class="w-25"><br /><br />          
										<asp:DropDownList ID="DropDownList1" runat="server" CssClass="mydropdownlist">
											<asp:ListItem>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가 격 </asp:ListItem>
											<asp:ListItem>1만원~10만원</asp:ListItem>
											<asp:ListItem>10만원~20만원</asp:ListItem>
											<asp:ListItem>20만원~30만원</asp:ListItem>
										</asp:DropDownList>	
                       <br /><br />
					   <div style="font-weight: bold; font-size: 24px; color: rgb(0, 0, 0);"> 공용시설</div><br />
					<div class="checks"><input type="checkbox" id="wasmac" name="wasmac" <%=this.wasmac_chk%>> <label for="wasmac" style="font-size:large; font-weight:bold;">세탁기</label></div><br />
                    <div class="checks2"><input type="checkbox" id="paklot" name="paklot" <%=this.paklot_chk%>> <label for="paklot" style="font-size:large; font-weight:bold;">주차장</label></div><br />
                    <div class="checks3"><input type="checkbox" id="bbq" name="bbq" <%=this.bbq_chk%> > <label for="bbq" style="font-size:large; font-weight:bold;">바베큐</label></div><br />
				    <div class="checks4"> &nbsp&nbsp&nbsp&nbsp <input type="checkbox" id="wifi" name="wifi" <%=this.wifi_chk%>> <label for="wifi" style="font-size:large; font-weight:bold;">와이파이</label></div><br />
				
                    <div style="font-weight: bold; font-size: 24px; color: rgb(0, 0, 0);"> 객식 내 시설</div><br />
					<div class="checks5"><input type="checkbox" id="resfri" name="resfri" <%=this.resfri_chk%>> <label for="resfri" style="font-size:large; font-weight:bold;">냉장고</label></div><br />
					<div class="checks6"><input type="checkbox" id="resair" name="resair" <%=this.resair_chk%>> <label for="resair" style="font-size:large; font-weight:bold;">에어컨</label></div><br />
					<div class="checks7">&nbsp&nbsp&nbsp&nbsp <input type="checkbox" id="resbat" name="resbat" <%=this.resbat_chk%>> <label for="resbat" style="font-size:large; font-weight:bold;">욕실용품</label></div><br />
					<div class="checks8">&nbsp&nbsp&nbsp&nbsp <input type="checkbox" id="restv" name="restv" <%=this.restv_chk%>> <label for="restv" style="font-size:large; font-weight:bold;">텔레비전</label></div><br />
				    
                    <div style="font-weight: bold; font-size: 24px; color: rgb(0, 0, 0);"> 기타</div> <br />
					<div class="checks9">&nbsp&nbsp&nbsp&nbsp <input type="checkbox" id="brkfat" name="brkfat" <%=this.brkfat_chk%>> <label for="brkfat" style="font-size:large; font-weight:bold;">조식포함</label></div><br />
					<div class="checks10">&nbsp&nbsp&nbsp&nbsp <input type="checkbox" id="pet" name="pet" <%=this.pet_chk%>> <label for="pet" style="font-size:large; font-weight:bold;">반려동물</label></div><br />
					<div class="checks11">&nbsp&nbsp&nbsp&nbsp <input type="checkbox" id="somke" name="somke" <%=this.somke_chk%>> <label for="somke" style="font-size:large; font-weight:bold;">흡연여부</label></div><br />
					<div class="checks12"><input type="checkbox" id="event" name="event" <%=this.event_chk%>> <label for="event" style="font-size:large; font-weight:bold;">이벤트</label><br /><br /></div>
                    
                    </table>
                     </div>
                      <div style="width:75%;float:right;">
                            <table align="center">
                                <tr>
                                <td>
                                <asp:Label style="color:black; font-weight:bold; font-size:x-large;" ID="label2" runat="server" Text=""></asp:Label>           
                                </td>
                                </tr>
                                <tr>
                                    <td>                                           
                                        <asp:ListView ID="ListView" runat="server" GroupPlaceholderID="groupPlaceHolder"
                            ItemPlaceholderID="itemPlaceHolder" OnPagePropertiesChanging="OnPagePropertiesChanging">
                            <LayoutTemplate>
                                <asp:Table ID="Table2" runat="server">
                                    <asp:TableHeaderRow HorizontalAlign="Left">
                                        <asp:TableHeaderCell>
                                            <asp:Label ID="lblCnt" runat="server" CssClass="lblHeader"></asp:Label>
                                        </asp:TableHeaderCell>
                                    </asp:TableHeaderRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:PlaceHolder ID="groupPlaceHolder" runat="server"></asp:PlaceHolder>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow HorizontalAlign="Center">
                                        <asp:TableCell ColumnSpan="2">
                                            <br />
                                                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView">
                                                    <Fields>
                                                        <asp:NumericPagerField                 
                                                            ButtonCount="10"                
                                                            CurrentPageLabelCssClass="PagerCurrent"                
                                                            NextPreviousButtonCssClass="PagerNormal"                 
                                                            NumericButtonCssClass="PagerNormal"                
                                                            NextPageText=">>"                
                                                            PreviousPageText="<<" />
                                                    </Fields>
                                                </asp:DataPager>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </LayoutTemplate>
                                            <EmptyDataTemplate><span style="font-weight:bold;font-size:20px"><font color="red">'<%=this.word %>'</font>에 대한 검색결과가 없습니다.</span></EmptyDataTemplate>
                            <GroupTemplate>
                                    <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                            </GroupTemplate>

                            <ItemTemplate>
                                <table style="border:solid;border-width:1px;border-color:#cccccc;width:100%;height:100%">
                                    <tr style="text-align:center;cursor:pointer"onclick="location.href='view.aspx?residx=<%# Eval("residx") %>'">
                                        <td style="width:50%">
                                            <img src="<%# Eval("resimg1") %>" alt="" style="width:100%;height:70%"></td>
                                        <td style="vertical-align:top;text-align:left">
                                            <div><asp:Label style="color:black; font-weight:bold; font-size:25px;" ID="lblTitle" runat="server" Text='<%# Eval("resname") %>'></asp:Label></div>                       
                                            <div class="place_review"><font size="4"><script>Score(<%# Eval("score") %>);</script></font>&nbsp;<asp:Label ID="lblScore" runat="server" style="color:coral;font-size:18px;font-weight:bold" Text='<%# "("+Eval("score")+")" %>'></asp:Label></div>
                                            <div><asp:Label ID="lblAddress" runat="server" style="color:#8d3ea4;font-size:16px;font-weight:bold" Text='<%# "※"+Eval("resevt") %>'></asp:Label></div>
                                            <div><asp:Label ID="Label3" runat="server" style="color:#2478FF;font-size:16px;font-weight:bold" Text='<%# "#"+Eval("keyword1")+"#"+Eval("keyword2")+"#"+Eval("keyword3")+"#"+Eval("keyword4")+"#"+Eval("keyword5") %>'></asp:Label></div>
                                            <br /><br /><br /><br /><br /><br />
                                            <div style="text-align:right">
                                                <asp:Label ID="lblPrice" Font-Bold="true" runat="server" font-size="25px" Text='<%# Eval("price")+"원" %>'></asp:Label></div>                                        
                                        </td>                                    
                                    </tr>                                
                                </table>
                            </ItemTemplate>
                        </asp:ListView>                                          
                                    </td>
                                </tr>
                            </table>
                        </div>                        
                        </div>
                        </div>
                        </div>                   
                <br /><br />
        </form>
    <!-- option select start -->
</asp:Content>
