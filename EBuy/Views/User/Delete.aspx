<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<EBuy.Models.ryb>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>ryb</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.UserName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UserName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Pwd) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Pwd) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Xzqh) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Xzqh) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Enabled) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Enabled) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Type) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Type) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
