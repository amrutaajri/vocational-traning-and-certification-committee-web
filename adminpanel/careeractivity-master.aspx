﻿<%@ Page Title="Career Activity | VTCC" Language="C#" MasterPageFile="~/adminpanel/MasterAdmin.master" AutoEventWireup="true" CodeFile="careeractivity-master.aspx.cs" Inherits="adminpanel_careeractivity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script>
		$(document).ready(function () {
            $('[id$=gvcareer]').DataTable({
                columnDefs: [
                    { orderable: false, targets: [0, 1, 2, 3, 4, 5]}
				],
				order: [[0, 'desc']]
			});
		});
     </script>
    <script type="text/javascript">
        window.onload = function () {
            //alert("window load");

            duDatepicker('#<%= txtDate.ClientID %>', {
                auto: true, inline: true, format: 'dd/mm/yyyy',
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="pgTitle">Career-Activity Master</h2>
    <span class="space10"></span>
	<div id="editinfo" runat="server">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title"><%=pgTitle %></h3>
            </div>
             <%-- Card Body --%>
            <div class="card-body">
                <div class="colorLightBlue">
                    <%--<span>Id</span>--%>
                    <asp:Label ID="lblId" runat="server" Text="[New]"></asp:Label>
                </div>
                <span class="space15"></span>
                  <%-- From Row Start --%>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label>Date:*</label>
                        <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" Width="100%" ></asp:TextBox>
                    </div>

                    <div class="form-group col-md-6">
                        <label>CareerActivity Title:*</label>
                        <asp:TextBox ID="txtcaractTitle" runat="server" CssClass="form-control" Width="100%" MaxLength="50"></asp:TextBox>
                    </div>

                     <div class="form-group col-md-6">
                        <label>CareerActivity Description:*</label>
                        <asp:TextBox ID="txtcaractDesc" runat="server" CssClass="form-control" Width="100%"  Height="200" TextMode="MultiLine"></asp:TextBox>
                    </div>

                      </div>
            </div>
        </div>
          <!-- Button controls starts -->
        <span class="space10"></span>
        <span class="space10"></span>
        <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click"/>
        <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-outline-info" Text="Delete" OnClientClick="return confirm('Are you sure to delete?');" OnClick="btnDelete_Click"/>
        <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-outline-dark" Text="Cancel" OnClick="btnCancel_Click" />
        <div class="float_clear"></div>
        <!-- Button controls ends -->
        </div>

    <div id="viewinfo" runat="server">
        <a href="careeractivity-master.aspx?action=new" runat="server" class="btn btn-primary btn-md">Add New</a>
		<%--<a href="contactdata.aspx?action=new" runat="server" class="btn btn-primary btn-md">Add New</a>--%>
        <span class="space20"></span>
        <div class="formPanel table-responsive-md">
            <asp:GridView ID="gvcareer" runat="server" CssClass="table table-striped table-bordered table-hover" GridLines="None" 
                AutoGenerateColumns="false" OnRowDataBound="gvcareer_RowDataBound">
                 <HeaderStyle CssClass="thead-dark" />
				<RowStyle CssClass="" />
				<AlternatingRowStyle CssClass="alt" />
				<Columns>
                    <asp:BoundField DataField="CarActId">
						<HeaderStyle CssClass="HideCol" />
						<ItemStyle  CssClass="HideCol"/>
					</asp:BoundField>
					
                     <asp:BoundField DataField="CarActDate" HeaderText="Date">
						<ItemStyle Width="10%" />
					</asp:BoundField>

					 <asp:BoundField DataField="CarActTitle" HeaderText="CareerActivity Title">
						<ItemStyle Width="10%" />
					</asp:BoundField>

                     <asp:BoundField DataField="ViewsCount" HeaderText="Views">
						<ItemStyle Width="10%" />
					</asp:BoundField>

                    <asp:TemplateField>
						<ItemStyle Width="5%" />
						<ItemTemplate>
							<asp:Literal ID="litAnch" runat="server"></asp:Literal>
						</ItemTemplate>
					</asp:TemplateField>  
                    
                    <asp:TemplateField>
						<ItemStyle Width="5%" />
						<ItemTemplate>
							<asp:Literal ID="litAnchphto" runat="server"></asp:Literal>
						</ItemTemplate>
					</asp:TemplateField> 
                </Columns>
                <EmptyDataTemplate>
					<span class="warning">Its Empty Here... :(</span>
				</EmptyDataTemplate>
				<PagerStyle CssClass="" />
            </asp:GridView>
             </div>
    </div>
</asp:Content>

