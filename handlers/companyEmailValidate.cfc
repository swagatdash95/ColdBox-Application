component extends="coldbox.system.EventHandler"{
	property name = "validateCompanyEmail" inject = "companyEmailValidate";
    property name = "copyData" inject = "copyCompany";
    function index(event, rc, prc)
    {
        prc.errormessage =[];
        result = false;
    	result = validateCompanyEmail.validateEmail();
    	
        if(result)
        {   
            copyData.deleteUser();
            event.setView("thankyou").noLayout();
        }
    	else
    	{
            copyData.deleteInvalidatedUser();
    		prc.errormessage[1] ="The secret Key did not match!";
    		event.setView("index").noLayout();
    	}
    }
}