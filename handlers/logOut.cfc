component extends="coldbox.system.EventHandler"{
    function index(event,rc,prc)
    {
       	sessionInvalidate();
    	structClear(SESSION);
     	event.setView("index").noLayout();  
    }
}