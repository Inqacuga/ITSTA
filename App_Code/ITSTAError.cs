using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Text;

/// <summary>
/// Summary description for error
/// </summary>
public static class ITSTAError
{    
    //public ITSTAError(string errMessage)
    //{
    //    string strErrOccured = DateTime.Now.ToShortDateString().ToString();

    //    //append time of error to start of message
    //    errMessage = strErrOccured + ":" + errMessage;
    //    WriteError(errMessage);
    //}

    public static void WriteError(string errMsg)
    {
        const string errFilePath = @"~/errorlog.txt";

        string strErrOccured = DateTime.Now.ToShortDateString().ToString();

        //append time of error to start of message
        errMsg = strErrOccured + ":" + errMsg;
        WriteError(errMsg);

        StreamWriter writer = new StreamWriter();

        //TODO: finish this
    }
}