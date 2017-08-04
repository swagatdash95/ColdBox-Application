component extends="coldbox.system.EventHandler"{
	property name = "Feedbacks" inject = "USERHOMEPAGE.getFeedbacks";
    property name = "companies" inject = "USERHOMEPAGE.viewCompany";
    function index(event, rc, prc)
    {
        param name = "SESSION.loggedin" default = "false";
        if(SESSION.loggedin)
        {
            prc.feedBacks=[];
            prc.userNames=[];
            result1 = companies.viewCompanyDetails(URL.cId);
            result2 = feedBacks.getUserFeedbacks(URL.cId);

            prc.companyId = result1["companyId"];
            prc.companyName = result1["companyName"];
            prc.companyAvgRating = result1["averageRating"];
            prc.companyTurnOver = result1["turnOver"];
            prc.companyLogoURL = result1["companyLogoURL"];
            prc.companyEmployeeStrength = result1["employeeStrength"];
            prc.companyAboutUs = result1["aboutUs"];
            prc.companyContactUs = result1["contactUs"];
            if(result2.RecordCount==0)
            {
                prc.errorMessage=1;
                event.setView("UserHomePage/feedBacks").noLayout();
            }
            else
            {
                prc.errorMessage=0;
            	for (
                intRow = 1 ; 
                intRow LTE result2.RecordCount ; 
                intRow = (intRow + 1)
                )
                {
                    prc.feedBacks[intRow] = result2["feedBack"][intRow];
                    prc.userNames[intRow]= result2["userName"][intRow]; 
                }
                event.setView("UserHomePage/feedBacks").noLayout();
            }
        }
        else
        {
            event.setView("index").noLayout();
        }
    }
}