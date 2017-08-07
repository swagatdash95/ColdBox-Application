component extends="coldbox.system.EventHandler"{
	property name = "Locations" inject = "USERHOMEPAGE.getLocations";
    property name = "companies" inject = "USERHOMEPAGE.viewCompany";
    function index(event, rc, prc)
    {
        param name = "SESSION.loggedin" default = "false";
        if(SESSION.loggedin)
        {
            
            prc.lat=[];
            prc.long=[];
            prc.addr=[];
            result1 = companies.viewCompanyDetails(URL.cId);
            result2 = Locations.trackLocations(URL.cId);

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
                event.setView("UserHomePage/location").noLayout();
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
                    prc.lat[intRow] = result2["lat"][intRow];
                    prc.long[intRow] = result2["long"][intRow];
                    prc.addr[intRow] = result2["addr"][intRow];
                }
                event.setView("UserHomePage/location").noLayout();
            }
        }
        else
        {
            event.setView("index").noLayout();
        }
    }
}