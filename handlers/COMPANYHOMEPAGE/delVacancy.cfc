component extends="coldbox.system.EventHandler"{
property name = "company" inject = "ADMINHOMEPAGE.delVacancy";
    function index( event, rc, prc ){
         param name="SESSION.loggedin" default="false";
        if(SESSION.loggedin)
        {
            prc.errorMessage=[];
            result = company.validateDelVacancyDetails();
            if(ArrayIsEmpty(result))
            {
            res = company.delVacancyDetails();
            if(!res)
                if(!res)
                {
                   prc.errorMessage[1]="Job Doesn't Exist!";    
                }
                else
                {
                     prc.errorMessage[1]="Job deletd Successfully!";
                }    
                event.setView("AdminHomePage/adminHomePage").noLayout();
            }
            else
            {
                prc.errorMessage = result;
                event.setView("AdminHomePage/adminHomePage").noLayout();
            }
        }
        else
        {
            event.setView("index").nolayout();
        }
    }
}