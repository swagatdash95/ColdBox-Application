component extends="coldbox.system.EventHandler"{
	property name = "validateCompany" inject = "companySignUpValidate";
    property name = "insertUserData" inject = "insertCompany";
    
    function index(event, rc, prc)
    {
        result = [];
    	result = validateCompany.validateInputs();
    	
        if(ArrayisEmpty(result))
        {   
            insertResult = insertUserData.insertTempDB();
            if(!insertResult){
            prc.errormessage = "Database Error!";
            }
            lock timeout="60" scope="session" type="exclusive"
            { 
                SESSION.formEmail = FORM.companyEmail;
            }
            
            event.setView("emailValidateForm").noLayout();
        }
    	else
    	{
    		prc.errormessage = result;
    		event.setView("index").noLayout();
    	}
    }
}