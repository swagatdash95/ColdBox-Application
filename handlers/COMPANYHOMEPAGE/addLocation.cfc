component extends="coldbox.system.EventHandler"{
property name = "company" inject = "ADMINHOMEPAGE.addLocation";
    function index( event, rc, prc ){
         param name="SESSION.loggedin" default="false";
        if(SESSION.loggedin)
        {
            prc.errorMessage=[];
            result = company.validateAddLocationDetails();
            if(ArrayIsEmpty(result))
            {
            	res = company.addLocationDetails();
            	if(!res)
            	{
            		prc.errorMessage[1]="Could Not Add Vacancy!"; 	
            	}
            	else
            	{
                    prc.errorMessage[1]="Changes Made Successfully!";
            	}    
                event.setView("AdminHomePage/adminHomePage").noLayout();
            }
            else
            {
                 prc.errorMessage = result;
                 event.setView("AdminHomePage/adminHomePage").noLayout();
            }
        }
        else
        {
            event.setView("index").noLayout();
        }
    }
}