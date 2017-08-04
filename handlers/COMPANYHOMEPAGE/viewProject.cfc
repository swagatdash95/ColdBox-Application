component extends="coldbox.system.EventHandler"
{
	property name = "companies" inject = "ADMINHOMEPAGE.getProject";
    function index(event, rc, prc)
    {
         param name="SESSION.loggedin" default="false";
        if(SESSION.loggedin)
        {

            prc.projectName = [];
            prc.projectId = [];
            prc.about = [];
            prc.projectStatus = [];
            prc.available = false;
        	result = companies.getProjectdetails();
            if(result.RecordCount > 0)
            {
                prc.available = true;
            	for (
                intRow = 1 ; 
                intRow LTE result.RecordCount ; 
                intRow = (intRow + 1)
                )
                {
                    prc.projectName[intRow] = result["projectName"][intRow];
                    prc.about[intRow]= result["about"][intRow]; 
                    prc.projectStatus[intRow] = result["projectStatus"][intRow]; 
                    prc.projectId[intRow] = result["projectId"][intRow];
                }
                
               
            }
             event.setView("AdminHomePage/addProject").noLayout();
        }
        else
        {
            event.setView("index").nolayout();
        }
    }
}