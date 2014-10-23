using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

interface ITest
{
    string TestName
    {
        get;
        set;
    }

    int TestID
    {
        get;
    }

    int CreatorID
    {
        get;
        set;
    }

    int CategoryID
    {
        get;
        set;
    }
}

/// <summary>
/// TODO: Make a less stupid constructor
/// </summary>
public class Test : ITest
{
    private int _intTestID, _intCreatorID, _intCategoryID;
    private string _strTestName;
    

///<summary>
///return the unique test ID
///</summary>
    int TestID
    {
        get { return _intTestID; }        
    }

    public Test()
    {

    }

}