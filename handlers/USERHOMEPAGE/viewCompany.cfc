component extends="coldbox.system.EventHandler"{
	property name = "companies" inject = "USERHOMEPAGE.viewCompany";
    function index(event, rc, prc)
    {
        param name = "SESSION.loggedin" default = "false";
        if(SESSION.loggedin)
        {
        	result = companies.viewCompanyDetails(URL.cId);

                prc.companyId = result["companyId"];
                prc.companyName = result["companyName"];
                prc.companyAvgRating = result["averageRating"];
                prc.companyTurnOver = result["turnOver"];
                prc.companyLogoURL = result["companyLogoURL"];
                prc.companyEmployeeStrength = result["employeeStrength"];
                prc.companyAboutUs = result["aboutUs"];
                prc.companyContactUs = result["contactUs"];

            event.setView("UserHomePage/companyPage").noLayout();
        }
        else
        {
            event.setView("index").noLayout();
        }
    }
}