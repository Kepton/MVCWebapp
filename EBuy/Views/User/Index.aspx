<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<EBuy.Models.ryb>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.UserName) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Pwd) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Xzqh) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Enabled) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Type) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.UserName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Pwd) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Xzqh) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Enabled) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Type) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.id }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.id }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.id }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
