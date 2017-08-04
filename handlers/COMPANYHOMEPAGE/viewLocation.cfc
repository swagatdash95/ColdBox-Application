component extends="coldbox.system.EventHandler"
{
	property name = "companies" inject = "ADMINHOMEPAGE.getLocation";
    function index(event, rc, prc)
    {
         param name="SESSION.loggedin" default="false";
        if(SESSION.loggedin)
        {    
            prc.addr = [];
            prc.branchId = [];
            prc.available = false;
        	result = companies.getLocationdetails();
            if(result.RecordCount > 0)
            {
                prc.available = true;
            	for (
                intRow = 1 ; 
                intRow LTE result.RecordCount ; 
                intRow = (intRow + 1)
                )
                {
                    prc.addr[intRow] = result["addr"][intRow];
                    prc.branchId[intRow]= result["branchId"][intRow]; 
                }           
            }
             event.setView("AdminHomePage/addLocations").noLayout();
        }
        else
        {
            event.setView("index").noLayout();
        }
    }
}