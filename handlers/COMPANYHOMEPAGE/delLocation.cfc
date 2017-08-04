component extends="coldbox.system.EventHandler"{
property name = "company" inject = "ADMINHOMEPAGE.delLocation";
    function index( event, rc, prc ){
        param name="SESSION.loggedin" default="false";
        if(SESSION.loggedin)
        {

            prc.errorMessage=[];
            result = company.validateDelLocationDetails();
            if(ArrayIsEmpty(result))
            {
            	res = company.delLocationDetails();
            	if(!res)
            	{
            		prc.errorMessage[1]="Location doesn't Exist!"; 	
            	}
            	else
            	{
                    prc.errorMessage[1]="Location deleted Successfully!";
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