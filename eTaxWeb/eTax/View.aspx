<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="eTaxWeb.eTax.View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
    <div class="col-md-12">
        <h2>View e-Tax</h2>
        <p>
            ดูใบกำกับภาษีอิเล็กทรอนิกส์
        </p>
        <asp:GridView ID="gvPdfFiles" runat="server" AutoGenerateColumns="false" CssClass="table">
            <Columns>
                <asp:BoundField DataField="FileName" HeaderText="File Name" />
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:HyperLink ID="lnkView" runat="server" Text="View" NavigateUrl='<%# Eval("FilePath") %>' Target="_blank"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</div>
</asp:Content>
