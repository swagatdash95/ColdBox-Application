component extends="coldbox.system.EventHandler"{
property name = "company" inject = "ADMINHOMEPAGE.companyEditSave";
    function index( event, rc, prc ){
         param name="SESSION.loggedin" default="false";
        if(SESSION.loggedin)
        {

        	result=[];
        	result = company.validateCompanyDetails();
        	prc.errorMessage = [];
        	if(ArrayisEmpty(result))
        	{
        		res = company.saveCompanyDetails();
        		if(!res)
        		{
        			prc.errorMessage[1]="Could Not save Data"; 
        			event.setView("AdminHomePage/adminHomePage").noLayout();
        		}
        		else
        		{
        			prc.companyTurnOver = FORM.turnOver;
        			prc.companyEmployeeStrength = FORM.employeeStrength;
        			prc.companyAboutUs = FORM.aboutUs;
        			prc.companyContactUs = FORM.contactUs;
        			prc.message = "Changes Made Successfully!";
        			event.setView("AdminHomePage/adminProfile").noLayout();
        		}
        	}
        	else
        	{
        		prc.errorMessage=result;
        		event.setView("AdminHomePage/adminHomePage").noLayout();
        	}
        }
        else
        {
            event.setView("index").noLayout();
        }
    }
}