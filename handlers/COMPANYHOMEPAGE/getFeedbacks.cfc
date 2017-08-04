component extends="coldbox.system.EventHandler"
{
	property name = "companies" inject = "ADMINHOMEPAGE.getFeedbacks";
    function index(event, rc, prc)
    {
         param name="SESSION.loggedin" default="false";
        if(SESSION.loggedin)
        {

            prc.feedBackId = [];
            prc.userId = [];
            prc.feedBack = [];
            prc.feedBackTime = [];
            prc.available = false;
        	result = companies.getFeedbacksDetails();
            if(result.RecordCount > 0)
            {
                 prc.available = true;
            	for (
                intRow = 1 ; 
                intRow LTE result.RecordCount ; 
                intRow = (intRow + 1)
                )
                {
                    prc.userName[intRow] = result["userName"][intRow];
                    prc.feedBack[intRow]= result["feedBack"][intRow]; 
                    prc.feedBackTime[intRow] = result["feedBackTime"][intRow]; 
                }
                
               
            }
             event.setView("AdminHomePage/feedBacks").noLayout();
        }
        else
        {
            event.setView("index").noLayout();
        }
    }
}