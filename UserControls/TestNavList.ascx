<%@ Control Language="C#" AutoEventWireup="true" Inherits="UserControls_TestNavList" %>

<script runat="server">
     
    private void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            //check page type
            //eg: test, edit, review
            if(/*page type is TAKE TEST*/ )
            {
                //mark answered questions with a checkmark
            }
            
            if (/*page type is EDIT TEST*/ )
            {
                //hide the checked box
            }
            
            if (/*page type is REVIEW TEST*/ )
            {
                //mark questions right/wrong
            }
        }
    }
    
    private void Nav_Click(int QuestionID)
    {
        //refresh page with new question displayed
        //center nav window on current question
    }
</script>

<div class="navlist">
    <asp:DataList runat="server" ID="dlstQuestionList">
        <HeaderTemplate>
            <span class="testname">•
        <asp:Label runat="server" ID="lblQuestionNavWindow" /></span>

            <div class="questionlist">
                <ol class="questionlist">
        </HeaderTemplate>
        <ItemTemplate>
            <li class="questionlist">
                
                <asp:linkbutton runat="server" ID="lbnQuestionNumber" Text="<%# Eval("QuestionNumber" %>." />
                <asp:linkbutton runat="server" ID="lbnQeustionText" Text="<%# Eval("QuestionText" %>" />                
            </li>
        </ItemTemplate>
        <FooterTemplate>
            </ol>
            </div>
        </FooterTemplate>
    </asp:DataList>
</div>
