<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="de1.UserControl.WebUserControl1" %>
<p>
    &nbsp;
    <asp:Label ID="Beverage_Category_Available" runat="server" Font-Bold="True" Text="Beverage Category Available"></asp:Label>
</p>
<asp:DataList ID="DataList1" runat="server" DataKeyField="CatID" DataSourceID="EntityDataSource1">
    <ItemTemplate>
        <div>
            <li>
                <asp:HyperLink ID="CatHyperLink1" runat="server" NavigateUrl='<%# "Category.aspx" %>' Text='<%# Eval("CatName") + " (" + Eval("Beverage.Count") + ")" %>'></asp:HyperLink>
            </li>
        </div>
    </ItemTemplate>
</asp:DataList>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Category" Include="Beverage">
</asp:EntityDataSource>




