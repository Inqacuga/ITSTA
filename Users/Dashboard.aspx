<%@ Page Title="" Language="C#" MasterPageFile="~/Users/_LoggedIn.Master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Users_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="itsta_NavHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphUserMenus" runat="Server">
    <div class="user dashboard">
        <div class="dashInfo">
            <asp:Label runat="server" ID="lblLastTest" Text="No Test Data" />
            &nbsp -<asp:Label runat="server" ID="lblLastTestCat" Text="No Test Category" />
        </div>
        <div class="personalTests">
            <asp:Repeater ID="rptMyTests" runat="server">
                <HeaderTemplate>
                    <div class="testbank">
                    <h3><u>Saved Tests</u></h3>
                    <br />
                    <ul class="mytestlist">
                </HeaderTemplate>
                <ItemTemplate>
                    <li>
                        <asp:LinkButton runat="server" ID="lbnViewMyTest" Text="<%# Eval("TestName") %>" /> 
                        <br />
                        &nbsp&nbsp-<asp:Label runat="server" ID="lblTestCategory" Text="<%# Eval("CategoryName") %>" />
                    </li>
                </ItemTemplate>
                <FooterTemplate>
                    </ul>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
        </div>
        <div class="testBank">
            <asp:Repeater ID="rptTestBank" runat="server" >
                <HeaderTemplate>
                    <div class="testbank">
                    <h3><u>Test Bank</u></h3>
                    <br />
                    <ul class="mytestlist">               
                </HeaderTemplate>
                <ItemTemplate>
                    <li>
                        <asp:LinkButton runat="server" ID="lbnViewBankTest" Text="<%# Eval("TestName") %>" /> 
                        <asp:Label runat="server" ID="lblAuthor" Text="by <%# Eval("AuthorName") %>" />
                        <br />
                        &nbsp&nbsp-<asp:Label runat="server" ID="lblTestCategory" Text="<%# Eval("CategoryName") %>" />
                    </li>
                </ItemTemplate>                    
                <FooterTemplate>
                    </ul>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
        </div>        
        <asp:ObjectDataSource runat="server" ID="ldsMyTests" />
        <asp:LinqDataSource runat="server" ID="ldsTestPool" />
    </div>
</asp:Content>

