<%@ Page Title="" Language="C#" MasterPageFile="~/Users/_LoggedIn.Master" AutoEventWireup="true" CodeFile="Testing.aspx.cs" Inherits="Users_Default" %>

<asp:Content ID="cntTestingHead" ContentPlaceHolderID="itsta_NavHeader" Runat="Server">
</asp:Content>
<asp:Content ID="cntTestingConctrols" ContentPlaceHolderID="cphUserMenus" Runat="Server">
    <div class="test">
    <div class="Question">
        <div class="QuestionText">
            <asp:Label runat="server" ID="lblQuestionNumber" CssClass="questionNumber" />
            <asp:Label runat="server" ID="lblQuestionText" CssClass="questionText" />
        </div>
        <hr />
        <div class="answers">
            <asp:RadioButtonList runat="server" ID="rblAnswers" />
        </div>            
        <div class="navButton">
            <asp:Button runat="server" ID="btnFirst" Text="First" OnClick="Nav_Click" />
            <asp:Button runat="server" ID="btnPrev" Text="Prev" OnClick="Nav_Click" />
            <asp:Button runat="server" ID="btnNext" Text="Next" OnClick="Nav_Click" />
            <asp:Button runat="server" ID="bntLast" Text="Last" OnClick="Nav_Click" />
        </div>
    </div>
        </div>
</asp:Content>

