({
     handleResponse : function (response, component){
        var retVal = response.getReturnValue() ;
        component.set("v.auth",retVal); 
    },
	getSaveUser : function(component) {       
		// Fetch values from component and call service here
		var action = component.get("c.getSaveUser");  
        action.setParams({
       	    userName : component.get("v.userName"),
            password : component.get("v.password")
    	});
        action.setCallback(this, function(response) {
            this.handleResponse(response, component);
        });
        $A.enqueueAction(action); 
	},
	navigateToLogin : function(component) {
		 component.find("replacableDiv").set("v.body", []);
            var destination ="markup://c:loginForm";
            $A.createComponent(
                destination,
                {
                    
                },
                function(newButton){
                    //Add the new button to the body array
                    if (component.isValid()) {
                        var body = component.find("replacableDiv").get("v.body");
                        body.push(newButton);
                        component.find("replacableDiv").set("v.body", body);
                    }
                }
            );
	}
})