<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<EBuy.Models.ryb>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>ryb</legend>

        <%: Html.HiddenFor(model => model.id) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.UserName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.UserName) %>
            <%: Html.ValidationMessageFor(model => model.UserName) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Pwd) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Pwd) %>
            <%: Html.ValidationMessageFor(model => model.Pwd) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Xzqh) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Xzqh) %>
            <%: Html.ValidationMessageFor(model => model.Xzqh) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Enabled) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Enabled) %>
            <%: Html.ValidationMessageFor(model => model.Enabled) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Type) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Type) %>
            <%: Html.ValidationMessageFor(model => model.Type) %>
        </div>

        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
