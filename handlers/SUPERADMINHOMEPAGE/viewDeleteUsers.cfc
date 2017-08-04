component extends="coldbox.system.EventHandler"{
    property name = "users" inject = "SUPERADMINHOMEPAGE.getUsers";
    function index(event, rc, prc)
    {
         param name="SESSION.loggedin" default="false";
        if(SESSION.loggedin)
        {
            prc.userNames=[];
            prc.photoURLs=[];
            prc.userEmails=[];
            prc.userIds=[];
            result = users.getUserDetails();
            if(result.RecordCount==0)
            {
                prc.errorMessage=1;
                event.setView("SuperAdminHomePage/viewDeleteUsers").noLayout();
            }
            else
            {
                prc.errorMessage=0;
                for (
                intRow = 1 ; 
                intRow LTE result.RecordCount ; 
                intRow = (intRow + 1)
                )
                {
                    prc.userIds[intRow] = result["userId"][intRow];
                    prc.userNames[intRow] = result["userName"][intRow];
                    prc.photoURLs[intRow]= result["userPhotoURL"][intRow]; 
                    prc.userEmails[intRow] = result["userEmail"][intRow]; 
                }
                event.setView("SuperAdminHomePage/viewDeleteUsers").noLayout();
            }
        }
        else
        {
            event.setView("index").noLayout();
        }
    }
}