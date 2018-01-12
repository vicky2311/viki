({
	doInit : function(component) {
		var action = component.get("c.getAccounts");
		// Add callback behavior for when response is received
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {
                component.set("v.accounts", response.getReturnValue());
            }
        });
    	
        // Send action off to be executed
        $A.enqueueAction(action);
	}
})