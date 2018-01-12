({
	doInit : function(component, event, helper) {
		var action=component.get("c.getAccountDetail");
        debugger;
        action.setParams({
            Id : component.get("v.Id")
        });
        action.setCallback(this,function(re){
            var state=re.getState();
            if(state==='SUCCESS'){
                component.set("v.acc",re.getReturnValue());
            }
        });

        $A.enqueueAction(action);
	}
})