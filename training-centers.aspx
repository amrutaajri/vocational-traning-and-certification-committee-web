﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterParent.master" AutoEventWireup="true" CodeFile="training-centers.aspx.cs" Inherits="training_centers" %>
<%@ MasterType VirtualPath="~/MasterParent.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        .splitscreen {display: flex;}
            .splitscreen .left,
            .splitscreen .right {flex: 1;}

        table {font-family: arial, sans-serif; border-collapse: collapse; width: 100%;}
        td, th {border: 1px solid #dddddd; text-align: left; padding: 8px; color: #000000}
        tr:nth-child(even) {background-color: #dddddd;}
        th {font-weight: 600; color: #000000;}
    </style>

    <style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color:rgba(250, 243, 246, 0.8);
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Page Header Starts -->
    <div class="pgHeader1">
        <div class="headerOverlay">           
            <div class="bottomLight"></div>
            <div class="container">
                <div class="pg_TB_pad">
                    <h1 class="pageH1 clrWhite fontMedium">Affiliation Centers</h1>
                    <ul class="bCrumb">
                        <li><a href="<%= Master.rootPath %>">Home</a></li>
                        <li>&raquo;</li>
                        <li>Exam Center</li>
                    </ul>
                    <div class="float_clear"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header Ends -->

    <!-- VTCC ATC Affiliation starts -->
     <span class="space50"></span>  
     <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
     <ContentTemplate>
    <section id="Affiliation"></section>
     <div class="container">
      <h2 class="pageH2 large themeClrThr text-center">ATC List (Authorized Training Centers List) </h2>
        
      <span class="space50"></span>

      <asp:Label ID="lblId" runat="server" Text="[New]"></asp:Label>
      <div class="form-row">
           <div class="form-group col-md-6">
             <label for="typeoforg" class="fontRegular semiBold clrBlack"> Select State :* </label>
             <asp:DropDownList ID="ddlstate" CssClass="cmbBox" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged">
               
                 <asp:ListItem Value="0"><- Select State -></asp:ListItem>
             </asp:DropDownList>
          </div>

             <div class="form-group col-md-6">
             <label for="typeoforg" class="fontRegular semiBold clrBlack"> Select District :* </label>
             <asp:DropDownList ID="ddldist" CssClass="cmbBox" runat="server" AutoPostBack="true">
               
                 <asp:ListItem Value="0"><- Select District -></asp:ListItem>
             </asp:DropDownList>
             </div> 
           
           <div class="form-group col-md-6">          
             <label for="inputpincode" class="fontRegular semiBold clrBlack">Pincode :* </label>
             <asp:TextBox ID="txtpin"  class="form-control"  runat="server"></asp:TextBox>
           </div>
         </div> 

            
          <span class="space20"></span>
            <asp:Button ID="btnSearch" CssClass="btn themeBgThr clrWhite" runat="server" Text="Search" OnClick="btnSearch_Click" />
              <span class="space20"></span>

         
        <div id="viewtable" runat="server">
		<div class="formPanel table-responsive-md">

            <asp:GridView ID="gvexam" runat="server" GridLines="None"
                AutoGenerateColumns="false">
               
			<Columns>
               <%--  <asp:BoundField DataField="CenterID">
						<HeaderStyle CssClass="HideCol" />
						<ItemStyle  CssClass="HideCol"/>
					</asp:BoundField>--%>

                 <asp:BoundField DataField="CenterName" HeaderText=" Center Name">
						<ItemStyle Width="15%" />
					</asp:BoundField>

                 <asp:BoundField DataField="CenterPincode" HeaderText="Pincode">
						<ItemStyle Width="15%" />
					</asp:BoundField>

                 <asp:BoundField DataField="CenterMobile" HeaderText="Mobileno">
						<ItemStyle Width="15%" />
					</asp:BoundField>

                 <asp:BoundField DataField="CenterEmailId" HeaderText="EmailId">
						<ItemStyle Width="10%" />
					</asp:BoundField>
                </Columns>
                <EmptyDataTemplate>
					<span class="warning">Its Empty Here... :(</span>
				</EmptyDataTemplate>
				
            </asp:GridView>
            </div>
       
        </div>
      
     </div>

        </ContentTemplate>
    </asp:UpdatePanel> 
</asp:Content>

