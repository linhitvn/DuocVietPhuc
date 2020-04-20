﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="cProductDetailNew.ascx.cs" Inherits="controls_content_cProductDetailNew" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!-- Start All Title Box -->
<div class="all-title-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="title-all text-center">
                    <h4>"Hàng Việt Nam Chất Lượng Cao" 2005 - 2020 </h4>
                    <h5>(Liên tục nhiều năm liền từ 2005 - 2020)</h5>
                    <h4>"TOP TEN ngành hàng thương hiệu Việt hội nhập WTO 2009" </h4>
                    <h5>(Liên hiệp các hội Khoa học & Kỹ thuật Việt Nam)</h5>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End All Title Box -->
<!-- Start Shop Detail  -->
<div class="shop-detail-box-main">
    <div class="container">

        <div class="row">
            <div class="col-xl-5 col-lg-5 col-md-6">
                <div class="large-image">
                    <asp:Image ID="imgLink" runat="server" CssClass="img-fluid" AlternateText="" />
                </div>
            </div>
            <div class="col-xl-7 col-lg-7 col-md-6">
                <div class="single-product-details">
                    <h1>
                        <asp:Label ID="lblProductName" runat="server" Text=""></asp:Label></h1>
                    <h5><del>
                        <asp:Label ID="lblSalePrice" runat="server" Text=""></asp:Label>
                        </del>
                        Giá bán: <asp:Label ID="lblPrice" runat="server" Text=""></asp:Label>
                    </h5>
                    <p class="available-stock">
                        <%--<span>Còn hàng </span>--%>
                        <a href="#"><asp:Label ID="lblOutofStock" runat="server" Text=""></asp:Label></a>
                    </p>
                    <asp:Label ID="lblDescription" runat="server" Text=""></asp:Label>
                    <%--<asp:Panel ID="pnlOutofStock" runat="server">
                    <h4>Số lượng đặt mua:</h4>
                    <ul>
                        <li>
                            <div class="form-group quantity-box">
                                <telerik:RadNumericTextBox RenderMode="Lightweight" ID="txtQuantity" runat="server" Value="1" MinValue="1" MaxLength="2" MaxValue="50" Type="Number" EnableEmbeddedSkins="false" ShowSpinButtons="true" NumberFormat-DecimalDigits="0"></telerik:RadNumericTextBox>
                            </div>
                        </li>
                    </ul>

                    <div class="price-box-bar">
                        <div class="cart-and-bay-btn">
                            <asp:Label ID="lblPID" runat="server" Text="0" Visible="false"></asp:Label>
                            <asp:LinkButton ID="lkbAddCart" runat="server" CssClass="btn hvr-hover" OnClick="lkbAddCart_Click">Đặt Mua</asp:LinkButton>
                        </div>
                    </div>
                    </asp:Panel>--%>
                    <div class="price-box-bar">
                            <div class="cart-and-bay-btn">                                        
                                <a class="btn hvr-hover" data-fancybox-close="" href="/lien-he/index.html">Liên hệ mua hàng </a>
                            </div>
                        </div>
                </div>
            </div>
        </div>

        <!-- YOU MAY ALSO LIKE -->
        <div class="row my-5">
            <div class="col-lg-12">
                <div class="title-all">
                    <h2>Có thể bạn quan tâm </h2>
                    <%--<p>Tất cả sản phẩm tại The Vuong's Cosmetics mang thương hiệu VIPHARMA CGMP-ASEAN đều được sản xuất tại nhà máy đạt chuẩn CGMP.... </p>--%>
                </div>
                <div class="featured-products-box owl-carousel owl-theme">
                    <asp:Repeater ID="rptRelateProduct" runat="server">
                        <ItemTemplate>
                            <div class="item">
                                <div class="products-single fix">
                                    <div class="box-img-hover">
                                        <img alt='<%# Eval("ProductName")%>' src='<%# Eval("ImgLink1")%>' data-echo="/assets/images/products/pro_M_001.png" class="img-fluid" />
                                        <div class="mask-icon">
                                            <asp:Label ID="lblID" runat="server" Text='<%#Eval("ID")%>' Visible="false"></asp:Label>
                                            <%--<asp:LinkButton ID="lkbOrder" runat="server" CssClass="cart" CommandName="AddCart">Đặt Mua</asp:LinkButton>--%>
                                            <a class="cart" href="/lien-he/index.html">Liên hệ mua hàng </a>
                                        </div>
                                    </div>
                                    <div class="why-text">
                                        <h4>
                                            <a href='<%# Eval("RewriteURL")%>'><%# Eval("ProductName")%></a>
                                        </h4>
                                        <h5><%# Convert.ToInt32(Eval("Price")) == 0 ? "Giá: Liên hệ" : Eval("Price", "{0:#,##}").ToString() + " VNĐ" %> </h5>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
        <!-- YOU MAY ALSO LIKE -->

    </div>
</div>
<!-- End Cart -->
