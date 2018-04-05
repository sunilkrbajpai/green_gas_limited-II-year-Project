using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for vlue
/// </summary>
public class vlue
{
    public vlue()
    {

    }
    public int getvlue(int Weight)
    {
        if (Weight == 50)
            return 2000;
        else if (Weight == 30)
            return 1500;
        else if (Weight == 20)
            return 1000;
        else
            return 650;
    }
}