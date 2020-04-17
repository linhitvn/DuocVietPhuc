<%@ Control Language="C#" AutoEventWireup="true" CodeFile="cInfo.ascx.cs" Inherits="controls_content_cInfo" %>
<!-- Start All Title Box -->
<div class="all-title-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="title-all text-center">
                    <h1>Công ty TNHH Dược phẩm Việt Phúc </h1>
                    <h3>(VIET PHUC PHARMA LIMITED COMPANY) </h3>
                    <p style="margin: 0px;">Tên giao dịch: VIPHARMA CO., LTD. </p>
                    <p style="margin: 0px;">Sản xuất kinh doanh Dược phẩm và Mỹ phẩm </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End All Title Box -->

<!-- Start Contact Us  -->
<div class="contact-box-main">
    <div class="container">
        <asp:Repeater ID="rptInfo" runat="server">
            <ItemTemplate>
                <%# Eval("Content")%>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
<!-- End  -->
