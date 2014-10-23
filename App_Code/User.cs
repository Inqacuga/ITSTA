using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public interface IUser
{

}

/// <summary>
/// TODO: Add meaninful summary description for User
/// </summary>
private class User
{
#region User Info
    protected int _UserID;
    protected string _Username;
    protected string _Password;
    protected string _Email;
    protected string _PWSalt;
    protected string _PWPepper;
    protected int _PermissionLevel;
#endregion

#region LastScore
    protected int _LastTestID;
    protected float _LastScore;
    protected string _LastTestQuestions,
        _LastMissedQuestions;

#endregion

	public User()
	{
		
	}
}