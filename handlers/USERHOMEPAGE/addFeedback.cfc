component extends="coldbox.system.EventHandler"{
	property name = "Feedbacks" inject = "USERHOMEPAGE.addFeedback";
    function index(event, rc, prc)
    {   
        param name="SESSION.loggedin" default="false";
        if(SESSION.loggedin)
        {
            res = feedBacks.validateAddFeedbackDetails();
            if(ArrayIsEmpty(res))
            {    
                result = feedBacks.addUserFeedbacks(URL.cId);
                if(result)
                {
                    prc.message = "FeedBack added Successfully!";
                }
                else
                {
                     prc.message = "Could not add Feedback!";
                }
                event.setView("UserHomePage/userHomePage").noLayout();
            }
            else
            {
                prc.message = res[1];
                event.setView("UserHomePage/userHomePage").noLayout();
            }
        }
        else
        {
            event.setView("index").noLayout();
        }

    }
}