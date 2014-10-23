<%@ Page Title="Registration" Language="C#" CodeBehind="~/Register.aspx.cs" MasterPageFile="~/_Anon.Master" %>

<script runat="server">
    
</script>

<asp:Content ID="registrationHead" ContentPlaceHolderID="head" runat="Server">
    function cleanTextbox(obj)
    {
        obj.value="";
    }
</asp:Content>
<asp:Content ID="registrationContent" ContentPlaceHolderID="cphAnonContent" runat="Server">
    <div class="annon register">
        <div>
            <h3>New User Registration</h3>
        </div>
        <div class="anon login input">
            <asp:Label runat="server" ID="lblUsername" Text="Username:" />
            &nbsp 
            <asp:TextBox runat="server" ID="txtUsername" Text="Desired Username (50 characters or less)" CausesValidation="True" ValidationGroup="register" MaxLength="50"  />
            <br />
            <asp:Label runat="server" ID="lblPassword" Text="Password:" />
            &nbsp
            <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CausesValidation="true" ValidationGroup="register" MaxLength="50" />
            <br />
            <asp:Label runat="server" ID="lblPassVerify" Text="Reenter Password:" />
            &nbsp
            <asp:TextBox runat="server" ID="txtPassVerify" TextMode="Password" CausesValidation="true" ValidationGroup="register" MaxLength="50" />
            <br />
            <asp:Label runat="server" ID="lblEmail" Text="(Optional) Email:" />
            &nbsp
            <asp:TextBox runat="server" ID="txtEmail" Text="Used for password recovery. Ignore at own risk" ValidationGroup="email" MaxLength="50" />
        </div>
        <hr />
        <div class="buttons">
            <asp:Button runat="server" ID="btnSubmit" Text="Register" />
            &nbsp|&nbsp
            <asp:Button runat="server" ID="btnCancel" Text="Cancel" />
        </div>
    </div>
</asp:Content>

