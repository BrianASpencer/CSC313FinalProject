<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Query.aspx.cs" Inherits="FinalProject.Query" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Query</h3>
    <asp:DropDownList ID="dropdownlist" runat="server" BackColor="#003366" ForeColor="White">
        <asp:ListItem Value="cardname" Selected="True">Card Name</asp:ListItem>
        <asp:ListItem Value="setname">Set Name</asp:ListItem>
        <asp:ListItem Value="set_code">Set Code</asp:ListItem>
        <asp:ListItem Value="id">ID</asp:ListItem>
        <asp:ListItem Value="card_type">Card Type</asp:ListItem>
        <asp:ListItem Value="card_power">Card Power</asp:ListItem>
        <asp:ListItem Value="card_toughness">Card Toughness</asp:ListItem>
        <asp:ListItem Value="loyalty">Loyalty</asp:ListItem>
        <asp:ListItem Value="manacost">Mana Cost</asp:ListItem>
        <asp:ListItem Value="converted_manacost">Converted Manacost</asp:ListItem>
        <asp:ListItem Value="artist">Artist</asp:ListItem>
        <asp:ListItem Value="flavor">Flavor</asp:ListItem>
        <asp:ListItem Value="color">Color</asp:ListItem>
        <asp:ListItem Value="generated_mana">Generated Mana</asp:ListItem>
        <asp:ListItem Value="card_number">Card Number</asp:ListItem>
        <asp:ListItem Value="rarity">Rarity</asp:ListItem>
        <asp:ListItem Value="rating">Rating</asp:ListItem>
        <asp:ListItem Value="ruling">Ruling</asp:ListItem>
        <asp:ListItem Value="variation">Variation</asp:ListItem>
        <asp:ListItem Value="ability">Ability</asp:ListItem>
    </asp:DropDownList><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="search" runat="server" Text="Search" BackColor="Black" BorderColor="White" ForeColor="White" OnClick="search_Click"/>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
