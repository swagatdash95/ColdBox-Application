component extends="coldbox.system.EventHandler"{
property name = "company" inject = "SUPERADMINHOMEPAGE.delCompany";
    function index( event, rc, prc ){
         param name="SESSION.loggedin" default="false";
        if(SESSION.loggedin)
        {
            prc.errorMessage=[];
            result = company.validateDelCompanyDetails();
            if(ArrayIsEmpty(result))
            {
            	res = company.delCompanyDetails();
            	if(!res)
            	{
            		prc.errorMessage[1]="Could Not Delete Company!"; 	
            	}
            	else
            	{
                    prc.errorMessage[1]="Company deleted Successfully!";
            	}    
                event.setView("SuperAdminHomePage/superAdminHomePage").noLayout();
            }
            else
            {
                prc.errorMessage = result;
                event.setView("SuperAdminHomePage/superAdminHomePage").noLayout();
            }
        }
        else
        {
            event.setView("index").noLayout();
        }
    }
}