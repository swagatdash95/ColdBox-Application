component extends="coldbox.system.EventHandler"{
    property name = "companies" inject = "USERHOMEPAGE.getCompanies";
    function index(event, rc, prc)
    {
         param name="SESSION.loggedin" default="false";
        if(SESSION.loggedin)
        {
            prc.companyNames=[];
            prc.logoURLs=[];
            result = companies.getCompanyDetails();
            if(result.RecordCount==0)
            {
                prc.errorMessage=1;
                event.setView("SuperAdminHomePage/viewDeleteCompanies").noLayout();
            }
            else
            {
                prc.errorMessage=0;
                for (
                intRow = 1 ; 
                intRow LTE result.RecordCount ; 
                intRow = (intRow + 1)
                )
                {
                    prc.companyNames[intRow] = result["companyName"][intRow];
                    prc.logoURLs[intRow]= result["companyLogoURL"][intRow]; 
                    prc.companyId[intRow] = result["companyId"][intRow]; 
                }
                event.setView("SuperAdminHomePage/viewDeleteCompanies").noLayout();
            }
        }
        else
        {
            event.setView("index").noLayout();
        }
    }
}