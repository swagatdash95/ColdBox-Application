component extends="coldbox.system.EventHandler"{
    function index( event, rc, prc ){
    
    	param name="SESSION.loggedin" default="false";
    	if(SESSION.loggedin)
     		event.setView("UserHomePage/companies").noLayout();   
     	else
     		event.setView("index").noLayout();
     }
}