<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="FinalProject.Insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Insert</h3>
    <asp:Label ID="cardnamelabel" runat="server" Text="Card Name"></asp:Label><asp:TextBox ID="cardnamebox" runat="server"></asp:TextBox>
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="setnamelabel" runat="server" Text="Set Name"></asp:Label><asp:TextBox ID="setnamebox" runat="server"></asp:TextBox>
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="setcodelabel" runat="server" Text="Set Code"></asp:Label><asp:TextBox ID="setcodebox" runat="server"></asp:TextBox>
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="idlabel" runat="server" Text="ID"></asp:Label><asp:TextBox ID="idbox" runat="server"></asp:TextBox>
    <br>
    <asp:Label ID="cardtypelabel" runat="server" Text="Card Type"></asp:Label>&nbsp; <asp:TextBox ID="cardtypebox" runat="server"></asp:TextBox>
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="cardpowerlabel" runat="server" Text="Card Power"></asp:Label><asp:TextBox ID="cardpowerbox" runat="server"></asp:TextBox>
    &nbsp; &nbsp;&nbsp;
    <asp:Label ID="cardtoughnesslabel" runat="server" Text="Card Toughness"></asp:Label><asp:TextBox ID="cardtoughnessbox" runat="server"></asp:TextBox>
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="loyaltylabel" runat="server" Text="Loyalty"></asp:Label><asp:TextBox ID="loyaltybox" runat="server"></asp:TextBox>
    <br>
    <asp:Label ID="manacostlabel" runat="server" Text="Mana Cost"></asp:Label>&nbsp;<asp:TextBox ID="manacostbox" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="convertedmanacostlabel" runat="server" Text="CMC"></asp:Label><asp:TextBox ID="generatedmanacostbox" runat="server"></asp:TextBox>
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="artistlabel" runat="server" Text="Artist"></asp:Label><asp:TextBox ID="artistbox" runat="server"></asp:TextBox>
    &nbsp; &nbsp;&nbsp;
    <asp:Label ID="flavorlabel" runat="server" Text="Flavor Text"></asp:Label><asp:TextBox ID="flavorbox" runat="server"></asp:TextBox>
    <br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="colorlabel" runat="server" Text="Color"></asp:Label>&nbsp;<asp:TextBox ID="colorbox" runat="server"></asp:TextBox>
    &nbsp;
    <asp:Label ID="generatedmanalabel" runat="server" Text="Generated Mana"></asp:Label><asp:TextBox ID="convertedmanabox" runat="server"></asp:TextBox>
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="cardnumberlabel" runat="server" Text="Card Number"></asp:Label><asp:TextBox ID="cardnumberbox" runat="server"></asp:TextBox>
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="raritylabel" runat="server" Text="Rarity"></asp:Label><asp:TextBox ID="raritybox" runat="server"></asp:TextBox>
    <br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="ratinglabel" runat="server" Text="Rating"></asp:Label><asp:TextBox ID="ratingbox" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Label ID="rulinglabel" runat="server" Text="Ruling"></asp:Label><asp:TextBox ID="rulingbox" runat="server"></asp:TextBox>
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="variationlabel" runat="server" Text="Variation"></asp:Label><asp:TextBox ID="variationbox" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Label ID="abilitylabel" runat="server" Text="Ability"></asp:Label><asp:TextBox ID="abilitybox" runat="server"></asp:TextBox>
    <br><br>
    <asp:Button ID="add" runat="server" Text="Insert" BackColor="Black" BorderColor="White" BorderStyle="Ridge" Width="65px" OnClick="add_Click" ForeColor="White" />
    <br>
    </asp:Content>
