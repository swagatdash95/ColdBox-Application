component extends="coldbox.system.EventHandler"{
	property name = "validateCompanySignIn" inject = "companySigninValidate";
    
    function index(event, rc, prc)
    {
    	result = validateCompanySignIn.validateCompany();
    	if(result == true)
        {
    		event.setView("AdminHomePage/adminHomePage").noLayout();
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