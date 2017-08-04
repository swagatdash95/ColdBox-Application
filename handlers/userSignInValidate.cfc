component extends="coldbox.system.EventHandler"{
	property name = "validateUserSignIn" inject = "userSigninValidate";
    
    function index(event, rc, prc)
    {
    	result = validateUserSignIn.validateUser();
    	if(result==2)
        {
    		event.setView("UserHomePage/userHomePage").noLayout();
            session.loggedin = true;
        }
    	else if(result==1)
        {
            event.setView("SuperAdminHomePage/superAdminHomePage").noLayout();
            session.loggedin = true;
        }
        else
    	{
            prc.errormessage = [];
    		prc.errormessage[1] = "UserName or Password Invalid!";
    		event.setView("index").noLayout();
    	}
    }
}