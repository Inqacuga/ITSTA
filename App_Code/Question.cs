using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Represents a generic multiple choice test question
/// </summary>
interface IQuestion
{
    int QuestionID
    {
        get;
    }

    int ParentTestID
    {
        get;
        set;
    }

    int CorrectAnswerID
    {
        get;
        set;
    }

    float Rating
    {
        get;
        set;
    }

    string QuestionText
    {
        get;
        set;
    }

    Answer[] Answers
    {
        get;
        set;
    }
}

/// <summary>
/// An ITSTA standard multiple choice test question
/// </summary>
private class Question
{
    private int _intQuestionID, _intParentTestID, _intCorrectAnswerID;
    private float _fltRating;
    private string _strQuestionText;
    private Answer[] _Answers;

    public Question(int intTestID)
    {
        //
        // TODO: Add constructor logic here
        //
    }
}