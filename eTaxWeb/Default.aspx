<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="eTaxWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">e-Tax Pan Beauty Care</h1>
            <p class="lead">โปรแกรมออกใบกำกับภาษีอิเล็กทรอนิกส์ บริษัทโฮลิสติกสปาแอนบิวตี้ ในเครือแพนคลินิกและแพนบิวตี้แคร์</p>
            <p><a href="http://www.panclinic.com" class="btn btn-primary btn-md">Pan Clinic</a></p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Create e-Tax</h2>
                <p>
                    ออกใบกำกับภาษีอิเล็กทรอนิกส์
                </p>
                <p>
                    <a class="btn btn-default" href="/eTax/Create">Click &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 id="librariesTitle">View e-Tax</h2>
                <p>
                    ดูใบกำกับภาษีอิเล็กทรอนิกส์ที่ออกสำเร็จแล้ว
                </p>
                <p>
                    <a class="btn btn-default" href="/eTax/View">Click &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 id="hostingTitle">Admin</h2>
                <p>
                    ปรับแต่งข้อมูลในเอกสาร
                </p>
                <p>
                    <a class="btn btn-default" href="/">Click &raquo;</a>
                </p>
            </section>
        </div>
    </main>

</asp:Content>
