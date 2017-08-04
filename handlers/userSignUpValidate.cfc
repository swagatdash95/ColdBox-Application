component extends="coldbox.system.EventHandler"{
	property name = "validateUser" inject = "userSignUpValidate";
    property name = "insertUserData" inject = "insertUser";
    
    function index(event, rc, prc)
    {
        result = [];
    	result = validateUser.validateInputs();
    	
        if(ArrayisEmpty(result))
        {   
            insertResult = insertUserData.insertDB();
    		if(insertResult){
            event.setView("thankyou").noLayout();
            }
        }
    	else
    	{
    		prc.errormessage = result;
    		event.setView("index").noLayout();
    	}
    }
}