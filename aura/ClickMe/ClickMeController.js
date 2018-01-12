({
    doInit : function(component) {
        var action=component.get("c.getAccounts");
        action.setCallback(this,function(re){
            var state=re.getState();
            if(state==='SUCCESS'){
                //alert('values @@@@@@@@@@@@@'+re.getReturnValue());
                component.set("v.accounts",re.getReturnValue());
            }
        });

        $A.enqueueAction(action);
    },
    navigateToMyComponent : function(component, event, helper) {
        // for non-lightning components.
        var accId = event.target.name; 
        //event.getSource().get("v.name");  for lightning components.
        var evt = $A.get("e.force:navigateToComponent");        
        evt.setParams({
            componentDef : "c:AccountDetail" ,
            componentAttributes: {
                Id : accId
            }
        });
        evt.fire();
    }
})