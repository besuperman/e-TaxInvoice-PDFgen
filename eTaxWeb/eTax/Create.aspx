<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="eTaxWeb.eTax.Create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h2>Create e-Tax</h2>
            <p>
                ออกใบกำกับภาษีอิเล็กทรอนิกส์
            </p>
            <asp:GridView ID="gvReceipts" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered">
                <Columns>
                    <asp:BoundField DataField="ReceiptID" HeaderText="Receipt No" />
                    <asp:BoundField DataField="ReceiptDate" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="CustomerID" HeaderText="OPD" />
                    <asp:BoundField DataField="AllTotal" HeaderText="Amount" DataFormatString="{0:N2}" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
