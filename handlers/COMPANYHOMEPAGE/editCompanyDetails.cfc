component extends="coldbox.system.EventHandler"{
property name = "company" inject = "ADMINHOMEPAGE.companyProfile";
    function index( event, rc, prc ){
    	 param name="SESSION.loggedin" default="false";
        if(SESSION.loggedin)
        {
	    	result = company.getCompanyDetails();
	            prc.companyAvgRating = result["averageRating"];
	            prc.companyTurnOver = result["turnOver"];
	            prc.companyEmployeeStrength = result["employeeStrength"];
	            prc.companyAboutUs = result["aboutUs"];
	            prc.companyContactUs = result["contactUs"];

	     	event.setView("AdminHomePage/adminProfileEdit").noLayout();   
	     }
	     else
	     {
	     	event.setView("index").noLayout();
	     }
     }
}