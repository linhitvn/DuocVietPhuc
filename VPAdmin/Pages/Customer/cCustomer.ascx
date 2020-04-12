﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="cCustomer.ascx.cs" Inherits="Pages_Customer_cCustomer" %>

<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        <i class="fa fa-list"></i>
        Danh sách khách hàng
    </h1>
    <ol class="toolbar">
        <li><button runat="server" id="btCreate" onserverclick="New_Click" class="btn btn-info btn-sm">
            <i class="fa fa-plus-square"></i>
            <span>Tạo mới</span>
            </button>
        </li>
        <li><button runat="server" id="btClone" onserverclick="Clone_Click" class="btn btn-info btn-sm">
            <i class="fa fa-copy"></i>
            <span>Sao chép</span>
            </button>
       </li>
        <li>
            <button runat="server" id="btDelete" onserverclick="Delete_Click" class="btn btn-info btn-sm">
                <i class="fa fa-trash-o"></i>
                <span>Xóa</span>
            </button>
        </li>
    </ol>
</section>
<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
<ContentTemplate>
<div runat="server" id="message_box">    
</div>




<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body table-responsive">
                    <div id="example1_wrapper" class="dataTables_wrapper form-inline" role="grid">
                        <%--<div class="row">
                            <div class="col-xs-6">
                                <div id="example1_length" class="dataTables_length">
                                    <label>
                                        <select size="1" name="example1_length" aria-controls="example1"></select> records per page
                                    </label>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="dataTables_filter" id="example1_filter">
                                    <label>Search: <input type="text" aria-controls="example1"></label>
                                </div>
                            </div>
                        </div>--%>
                        <telerik:RadGrid ID="RadGrid1" ClientInstanceName="RadGrid1" runat="server" EnableEmbeddedSkins="false"  
                                     GridLines="None" AllowPaging="True" AllowSorting="false" AutoGenerateColumns="False"
			                        AllowMultiRowSelection="true" AllowFilteringByColumn="false" 
                                OnItemCommand="RadGrid1_ItemCommand" onneeddatasource="RadGrid1_NeedDataSource">
                                <MasterTableView DataKeyNames="ID" ShowHeadersWhenNoRecords="true" CssClass="table table-bordered table-striped dataTable">
                                    <Columns>
										<telerik:GridClientSelectColumn UniqueName="ClientSelectColumn1" HeaderStyle-HorizontalAlign="Center">
                                            <ItemStyle Width="5%" HorizontalAlign="Center" />
                                        </telerik:GridClientSelectColumn>
                                        <telerik:GridBoundColumn DataField="CustomerName" UniqueName="CustomerName" HeaderText="Tên khách hàng" ShowFilterIcon="false">
					                        <HeaderStyle Width="30%" HorizontalAlign="Center" /> 
				                        </telerik:GridBoundColumn>
				                        <telerik:GridBoundColumn DataField="Email" UniqueName="Email" HeaderText="E-mail" ShowFilterIcon="false">
					                        <HeaderStyle Width="15%" HorizontalAlign="Center" /> 
				                        </telerik:GridBoundColumn>
				                        <telerik:GridBoundColumn DataField="Phone" UniqueName="Phone" HeaderText="Điện thoại" ShowFilterIcon="false">
					                        <HeaderStyle Width="15%" HorizontalAlign="Center" /> 
				                        </telerik:GridBoundColumn>
				                        <telerik:GridBoundColumn DataField="Address" UniqueName="Address" HeaderText="Địa chỉ" ShowFilterIcon="false">
					                        <HeaderStyle Width="15%" HorizontalAlign="Center" /> 
				                        </telerik:GridBoundColumn>
				                        <telerik:GridBoundColumn DataField="SysDate" UniqueName="SysDate" DataFormatString="{0:dd/MM/yyyy HH:mm:ss}" HeaderText="Ngày tạo" ShowFilterIcon="false"> 
					                        <HeaderStyle Width="15%" HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
				                        </telerik:GridBoundColumn>
                                        <telerik:GridTemplateColumn ShowFilterIcon="false" AllowFiltering="false">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="ImageButton2" CommandName='<%# ActRow.Edit %>'
                                                    CommandArgument='<%# Eval("ID") %>' runat="server"
                                                    ImageUrl="~/images/edit.png" />
                                            </ItemTemplate>
                                            <ItemStyle Width="5%" HorizontalAlign="Center" />
                                        </telerik:GridTemplateColumn>
                                    </Columns>
                                </MasterTableView>
                                <ClientSettings>            
                                    <Selecting AllowRowSelect="true"></Selecting>
                                </ClientSettings>
                            </telerik:RadGrid>
                    </div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div>
    </div>
</section>
</ContentTemplate>
</asp:UpdatePanel>
</ContentTemplate>
</asp:UpdatePanel>