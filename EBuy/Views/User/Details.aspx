<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<EBuy.Models.ryb>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

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
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.id }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
