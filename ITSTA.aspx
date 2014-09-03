<%@ Page Title="Welcome. Please Log in or Register" Language="C#" MasterPageFile="_Anon.Master" %>

<script runat="server">

</script>

<asp:Content ID="loginHead" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="LoginContent" ContentPlaceHolderID="cphAnonContent" Runat="Server">
    <div class="anonContent">
        <asp:Label runat="server" ID="lblUserName" Text="Username:" />&nbsp<asp:TextBox ID="txtUserName" runat="server" MaxLength="50" validationgroup="login"  />
        <br />
        <asp:Label runat="server" ID="lblPassword" Text="Password:" />&nbsp<asp:TextBox ID="txtPassword"
            validationgroup="login" runat="server" TextMode="Password" MaxLength="100" /> 
        <br />
        <asp:Button runat="server" ID="btnLogin" Text="Login" OnClick="btnLogin_Click" CausesValidation="true" ValidationGroup="login" />
        <asp:CheckBox runat="server" ID="chbRemember" Text="Remember Me" />

    </div>
</asp:Content>

