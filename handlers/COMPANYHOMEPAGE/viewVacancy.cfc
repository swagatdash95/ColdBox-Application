component extends="coldbox.system.EventHandler"
{
	property name = "companies" inject = "ADMINHOMEPAGE.getVacancy";
    function index(event, rc, prc)
    {
         param name="SESSION.loggedin" default="false";
        if(SESSION.loggedin)
        {
            prc.jobName = [];
            prc.details = [];
            prc.companyLinks = [];
            prc.jobIds = [];
            prc.available = false;
        	result = companies.getVacancydetails();
            if(result.RecordCount > 0)
            {
                prc.available = true;
            	for (
                intRow = 1 ; 
                intRow LTE result.RecordCount ; 
                intRow = (intRow + 1)
                )
                {
                    prc.jobName[intRow] = result["jobName"][intRow];
                    prc.details[intRow]= result["details"][intRow]; 
                    prc.companyLinks[intRow] = result["companyLink"][intRow]; 
                    prc.jobIds[intRow] = result["jobId"][intRow];
                }           
            }
             event.setView("AdminHomePage/addVacancy").noLayout();
        }
        else
        {
            event.setView("index").noLayout();
        }
    }
}