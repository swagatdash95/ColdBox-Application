component extends="coldbox.system.EventHandler"{
property name = "company" inject = "SUPERADMINHOMEPAGE.delUser";
    function index( event, rc, prc ){
         param name="SESSION.loggedin" default="false";
        if(SESSION.loggedin)
        {
            prc.errorMessage=[];
            result = company.validateDelUserDetails();
            if(ArrayIsEmpty(result))
            {
            	res = company.delUserDetails();
            	if(!res)
            	{
            		prc.errorMessage[1]="Could Not Delete User!"; 	
            	}
            	else
            	{
                    prc.errorMessage[1]="User deleted Successfully!";
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