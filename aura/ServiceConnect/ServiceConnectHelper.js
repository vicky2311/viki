({
	loadService : function(component) {
		var action = component.get("c.getBackupHistory");
        action.setCallback(this, function(a) {
            if (a.getState() === "SUCCESS") {
                 component.set("v.message", a.getReturnValue());
            } else if (a.getState() === "ERROR") {
                $A.log("Errors", a.getError());
            }
        });
    
        $A.enqueueAction(action);
	}
})