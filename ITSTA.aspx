<%@ Page Title="Welcome. Please Log in or Register" CodeBehind="~/ITSTA.aspx.cs" Language="C#" MasterPageFile="~/_Anon.Master" %>

<script runat="server">

</script>

<asp:Content ID="loginHead" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="LoginContent" ContentPlaceHolderID="cphAnonContent" runat="Server">
    <div class="anonContent">
        <div class="anon login input">
            <asp:Label runat="server" ID="lblUserName" Text="Username:" />&nbsp<asp:TextBox ID="txtUserName" runat="server" MaxLength="50" ValidationGroup="login" />
            <br />
            <asp:Label runat="server" ID="lblPassword" Text="Password:" />&nbsp<asp:TextBox ID="txtPassword"
                ValidationGroup="login" runat="server" TextMode="Password" MaxLength="100" />
        </div>
        <br /> <hr />
        <asp:Button runat="server" ID="btnLogin" Text="Login" OnClick="btnLogin_Click" CausesValidation="true" ValidationGroup="login" />
        <asp:CheckBox runat="server" ID="chbRemember" Text="Remember Me" />

    </div>
</asp:Content>

