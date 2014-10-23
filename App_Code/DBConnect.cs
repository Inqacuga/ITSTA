using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Linq;

public partial class ITSTAContext : DataContext
{
    public ITSTAContext(string connection) : base(connection) { }
    public Table<Test> Test;
    public Table<Question> Question;
    public Table<Answer> Answers;
    public Table<User> User;

}

/// <summary>
/// Common connection strings
/// </summary>
public static class DBConnect
{
    //DataContext db = new DataContext("localhost"); //weakly typed dbcontext
    ITSTAContext db = new ITSTAContext("luna");
    
#region Modify

    private void Update(string cmdModify)
    {
        
    }

    private void AddNew(string cmdModify)
    {

    }
    
    private void Delete(string cmdModify)
    {

    }

    private void Save(string cmdModify)
    {
        try
        {
            db.SubmitChanges();
        }
        catch(Exception e)
        {
            string strException = e.ToString();
            ITSTAError.WriteError(strException);            
        }
    }

#endregion

    #region Retrieve Data

    /// <summary>
    /// Retrieves a list of tests viewable by user
    /// </summary>
    /// <param name="intTestID"></param>
    /// <returns></returns>
    private IEnumerable<Test> GetTestList(int intUserID)
    {
        
        IEnumerable<Test> TestList = from t in stp_tests
                                     where t.CreatorID_FK == intUserID &&
                                     t.isActive == true
                                     select t;
        return TestList;
    }

    private IEnumerable<IQuestion> GetTest(int intTestID)
    {
        
        var Test = from q in stp_questions
                                      join a in db.
                                      where q.
        return null; //TODO: Make this return something
    }

    private IEnumerable<IQuestion> GetLastTest(int intUserID, int intTestID)
    {
        return null; //TODO: Make this return something
    }
    #endregion
}