component extends="coldbox.system.EventHandler"{
	property name = "Projects" inject = "USERHOMEPAGE.getProjects";
    property name = "companies" inject = "USERHOMEPAGE.viewCompany";
    function index(event, rc, prc)
    {
        param name = "SESSION.loggedin" default = "false";
        if(SESSION.loggedin)
        {
            
            prc.Projects=[];
            prc.aboutProject=[];
            prc.projectStatus=[];
            result1 = companies.viewCompanyDetails(URL.cId);
            result2 = projects.getCompanyProjects(URL.cId);

            prc.companyId = result1["companyId"];
            prc.companyName = result1["companyName"];
            prc.companyTurnOver = result1["turnOver"];
            prc.companyLogoURL = result1["companyLogoURL"];
            prc.companyEmployeeStrength = result1["employeeStrength"];
            prc.companyAboutUs = result1["aboutUs"];
            prc.companyContactUs = result1["contactUs"];
            if(result2.RecordCount==0)
            {
                prc.errorMessage=1;
                event.setView("UserHomePage/projects").noLayout();
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
                    prc.Projects[intRow] = result2["projectName"][intRow];
                    prc.aboutProject[intRow]= result2["about"][intRow]; 
                    prc.projectStatus[intRow]=result2["projectStatus"][intRow];
                }
                event.setView("UserHomePage/projects").noLayout();
            }
        }
        else
        {
            event.setView("index").noLayout();
        }
    }
}