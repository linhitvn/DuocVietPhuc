<%@ Control Language="C#" AutoEventWireup="true" CodeFile="cSlider.ascx.cs" Inherits="controls_content_cSlider" %>
<div id="slides-shop" class="cover-slides">
    <ul class="slides-container">
        <asp:Repeater ID="rptSlider" runat="server">
            <ItemTemplate>
                <li class='<%# (Container.ItemIndex + 1) % 3 == 1 ? "text-center" : (Container.ItemIndex + 1) % 3 == 2 ? "text-center" : "text-center" %>'>
                    <img alt="" src='<%# Eval("ImgLink")%>' />
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h1 class="m-b-20"><strong><%# Eval("Content1")%></strong></h1>
                                <p class="m-b-40"><%# Eval("Content2")%></p>
                                <p><a class="btn hvr-hover" href='<%# Eval("UrlLink")%>'>Xem chi tiết</a></p>
                            </div>
                        </div>
                    </div>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>
    <div class="slides-navigation">
        <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
        <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
    </div>
</div>
<!-- End Slider -->

<!-- Start Shortcuts  -->
<div class="aboutus-box-main">
    <div class="container shortcut">
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        <img class="img-fluid" src="/assets/images/about-us/dvp_graphic_01.png" alt="Image" />
                        <div class="mask-icon">
                            <a class="shortcut" href="/gioi-thieu/index.html">Lịch sử hình thành & Phát triển</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        <img class="img-fluid" src="/assets/images/about-us/dvp_graphic_02.png" alt="Image" />
                        <div class="mask-icon">
                            <a class="shortcut" href="/san-pham/index.html">Sản phẩm của chúng tôi</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        <img class="img-fluid" src="/assets/images/about-us/dvp_graphic_03.png" alt="Image" />
                        <div class="mask-icon">
                            <a class="shortcut" href="/lien-he/index.html">Liên hệ mua hàng</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        <img class="img-fluid" src="/assets/images/about-us/dvp_graphic_04.png" alt="Image" />
                        <div class="mask-icon">
                            <a class="shortcut" href="/thong-tin/index.html">Thông tin doanh nghiệp</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<!-- End Shortcuts  -->
