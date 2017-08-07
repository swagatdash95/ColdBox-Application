component extends="coldbox.system.EventHandler"{
    function index(event,rc,prc)
    {
       	sessionInvalidate();
    	structClear(SESSION);
    	structClear(COOKIE);
    	cfcookie(name = "CFID", expires = "now");
    	cfcookie(name = "CFTOKEN", expires = "now");
     	event.setView("index").noLayout();  
    }
}