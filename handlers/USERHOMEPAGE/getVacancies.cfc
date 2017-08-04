component extends="coldbox.system.EventHandler"{
	property name = "Vacancies" inject = "USERHOMEPAGE.getVacancies";
    property name = "companies" inject = "USERHOMEPAGE.viewCompany";
    function index(event, rc, prc)
    {
        param name = "SESSION.loggedin" default = "false";
        if(SESSION.loggedin)
        {
            
            prc.jobName=[];
            prc.jobDetails=[];
            prc.link=[];
            result1 = companies.viewCompanyDetails(URL.cId);
            result2 = Vacancies.getVacancydetails(URL.cId);

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
                event.setView("UserHomePage/vacancies").noLayout();
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
                    prc.jobName[intRow] = result2["jobName"][intRow];
                    prc.jobDetails[intRow]= result2["details"][intRow]; 
                    prc.link[intRow]=result2["companyLink"][intRow];
                }
                event.setView("UserHomePage/vacancies").noLayout();
            }
        }
        else
        {
            event.setView("index").noLayout();
        }
    }
}