<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDataOverview.aspx.cs" Inherits="SoundHive.AdminDataOverview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CssContent" runat="server">
    <webopt:bundlereference runat="server" path="~/Content/AdminData" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="wrapper">
      <div class="panel">
        <div class="panel-header">
          <h3 class="title">Statistics</h3>
        </div>
            <div class="panel-body">
              <div class="categories">
                    <div class="category">
                      <span>New Users</span>
                      <span>1.897</span>
                    </div>
                    <div class="category">
                      <span>Recurring Users</span>
                      <span>127</span>
                    </div>
                    <div class="category">
                  <span>Page Views</span>
                  <span>8.648</span>
                </div>
              </div>
          </div>
        </div>
      </div>
</asp:Content>
