component extends="coldbox.system.EventHandler"{
property name = "company" inject = "ADMINHOMEPAGE.delProject";
    function index( event, rc, prc ){
         param name="SESSION.loggedin" default="false";
        if(SESSION.loggedin)
        {

            prc.errorMessage=[];
            result = company.validateDelProjectDetails();
            if(ArrayIsEmpty(result))
            {
            	res = company.delProjectDetails();
            	if(!res)
            	{
            		prc.errorMessage[1]="Project doesn't exist!"; 	
            	}
            	else
            	{
                    prc.errorMessage[1]="Project deleted Successfully!";
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