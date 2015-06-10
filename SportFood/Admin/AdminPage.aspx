<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="SportFood.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Администрация</h1>
    <hr />
    <h3>Добавить товар:</h3>
    <table>
        <tr>
            <td style="height: 43px"><asp:Label ID="LabelAddCategory" runat="server">Категория:</asp:Label></td>
            <td style="height: 43px">
                <asp:DropDownList ID="DropDownAddCategory" runat="server" 
                    ItemType="SportFood.Models.Category" 
                    SelectMethod="GetCategories" DataTextField="CategoryName" 
                    DataValueField="CategoryID" ForeColor="Black" Height="25px" Width="140px" >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 42px"><asp:Label ID="LabelAddName" runat="server">Название:</asp:Label></td>
            <td style="height: 42px">
                <asp:TextBox ID="AddProductName" runat="server" ForeColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="* Требуется название." ControlToValidate="AddProductName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 42px"><asp:Label ID="LabelAddDescription" runat="server">Описание:</asp:Label></td>
            <td style="height: 42px">
                <asp:TextBox ID="AddProductDescription" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="* Требуется описание." ControlToValidate="AddProductDescription" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 42px"><asp:Label ID="LabelAddPrice" runat="server">Цена:</asp:Label></td>
            <td style="height: 42px">
                <asp:TextBox ID="AddProductPrice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="* Требуется цена." ControlToValidate="AddProductPrice" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="* Цена должна быть допустимой." ControlToValidate="AddProductPrice" SetFocusOnError="True" Display="Dynamic" ValidationExpression="^[0-9]*(\.)?[0-9]?[0-9]?$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 45px"><asp:Label ID="LabelAddImageFile" runat="server">Файл картинки:</asp:Label></td>
            <td style="height: 45px">
                <asp:FileUpload ID="ProductImage" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="* Требуется путь к картинке." ControlToValidate="ProductImage" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <p></p>
    <p></p>
    <asp:Button ID="AddProductButton" runat="server" Text="Добавить товар" OnClick="AddProductButton_Click"  CausesValidation="true"/>
    <asp:Label ID="LabelAddStatus" runat="server" Text=""></asp:Label>
    <p></p>
    <h3>Убрать товар:</h3>
    <table>
        <tr>
            <td><asp:Label ID="LabelRemoveProduct" runat="server">Товар:</asp:Label></td>
            <td><asp:DropDownList ID="DropDownRemoveProduct" runat="server" ItemType="SportFood.Models.Product" 
                    SelectMethod="GetProducts" AppendDataBoundItems="true" 
                    DataTextField="ProductName" DataValueField="ProductID" ForeColor="Black" >
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <p></p>
    <asp:Button ID="RemoveProductButton" runat="server" Text="Убрать товар" OnClick="RemoveProductButton_Click" CausesValidation="false"/>
    <asp:Label ID="LabelRemoveStatus" runat="server" Text=""></asp:Label>
</asp:Content>
