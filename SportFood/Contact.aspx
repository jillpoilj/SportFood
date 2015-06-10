<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SportFood.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Контакты.</h3>
    <address>
        Smolensk<br />
        Dirty Bitches st.<br />
        <abbr title="Phone">тел:</abbr>
        696-969-6969
    </address>

    <address>
        <strong>Поддержка:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Маркетинг:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
