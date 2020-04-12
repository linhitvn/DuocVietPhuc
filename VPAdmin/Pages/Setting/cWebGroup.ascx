﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="cWebGroup.ascx.cs" Inherits="Pages_Setting_cWebGroup" %>

<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        <i class="fa fa-list"></i>
        Quản lý nhóm quyền
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
                        <telerik:RadGrid ID="RadGrid1" ClientInstanceName="RadGrid1" runat="server" EnableEmbeddedSkins="false"  
                                 GridLines="None" AllowPaging="True" AllowSorting="false" AutoGenerateColumns="False"
			                    AllowMultiRowSelection="true" AllowFilteringByColumn="false" 
                            OnItemCommand="RadGrid1_ItemCommand" onneeddatasource="RadGrid1_NeedDataSource">
                            <MasterTableView DataKeyNames="GroupID" ShowHeadersWhenNoRecords="true" CssClass="table table-bordered table-hover dataTable">
                                <Columns>
							        <telerik:GridClientSelectColumn UniqueName="ClientSelectColumn1" HeaderStyle-Width="3%" ItemStyle-HorizontalAlign="Center">
							        </telerik:GridClientSelectColumn>
							        <telerik:GridBoundColumn DataField="GroupName" UniqueName="GroupName" HeaderText="Tên nhóm quyền" ShowFilterIcon="false">
					                    <HeaderStyle Width="24%" HorizontalAlign="Center" /> 
				                    </telerik:GridBoundColumn>
				                    <telerik:GridBoundColumn DataField="Description" UniqueName="Description" HeaderText="Mô tả" ShowFilterIcon="false">
					                    <HeaderStyle Width="50%" HorizontalAlign="Center" /> 
				                    </telerik:GridBoundColumn>
				                    <telerik:GridCheckBoxColumn DataField="Active" UniqueName="Active" HeaderText="Kích hoạt" ShowFilterIcon="false" ReadOnly="True">
					                    <HeaderStyle Width="10%" HorizontalAlign="Center" />
					                    <ItemStyle HorizontalAlign="Center" />
				                    </telerik:GridCheckBoxColumn>
				                    <telerik:GridBoundColumn DataField="Level" UniqueName="Level" DataFormatString="{0:###,###}" HeaderText="Level" ShowFilterIcon="false">
					                    <HeaderStyle Width="10%" HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" />
				                    </telerik:GridBoundColumn>
							        <telerik:GridTemplateColumn ShowFilterIcon="false" AllowFiltering="false">
								        <ItemTemplate>
									        <asp:ImageButton ID="ImageButton2" CommandName='<%# ActRow.Edit %>'
										        CommandArgument='<%# Eval("GroupID") %>' runat="server" ImageUrl="~/images/edit.png" ToolTip="Chỉnh sửa" />
								        </ItemTemplate>
								        <ItemStyle HorizontalAlign="Center" />
                                        <HeaderStyle HorizontalAlign="Center" />
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