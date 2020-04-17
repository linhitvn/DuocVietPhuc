<%@ Control Language="C#" AutoEventWireup="true" CodeFile="cProductList.ascx.cs" Inherits="controls_content_cProductList" %>

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

<!-- Start latest Products  -->
<div class="products-box">
    <%--<div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="special-menu">
                    <div class="button-group filter-button-group">
                        <label class="active" data-filter="*">Tất cả </label>
                        <asp:Repeater ID="rptProductCate" runat="server">
                            <ItemTemplate>
                                <label data-filter=".<%# Eval("ID")%>"><%# Eval("ProductCat")%></label>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="special-menu">
					<div class="filter-button-group">
						<button class="active"><a href="#">Dược phẩm </a></button>
						<button><a href="http://vuongcosmetics.com/san-pham/index.html" target="_blank">Mỹ phẩm </a></button>
					</div>
                </div>
            </div>
        </div>
        <div class="row special-list">
            <asp:Repeater ID="rptProList" runat="server">
                <ItemTemplate>
                    <div class="col-lg-3 col-md-6 special-grid">
                        <div class="products-single fix">
                            <div class="box-img-hover">
                                <img alt='<%# Eval("ProductName")%>' src='<%# Eval("ImgLink1")%>' data-echo="/assets/images/products/pro_M_001.png" class="img-fluid" />
                                <div class="mask-icon">
                                    <asp:Label ID="lblID" runat="server" Text='<%#Eval("ID")%>' Visible="false"></asp:Label>
                                    <%--<asp:LinkButton ID="lkbOrder" runat="server" CssClass="cart" CommandName="AddCart">Thêm Vào Giỏ Hàng</asp:LinkButton>--%>
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
<!-- End latest Products  -->
