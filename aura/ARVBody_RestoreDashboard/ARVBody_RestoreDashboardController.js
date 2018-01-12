({
	showThisRestore : function(component, event, helper) {
        component.find("bodyfill").set("v.body", []);
            var destination ="markup://c:ARVSelectBackup_Restore";
            $A.createComponent(
                destination,
                {
                    
                },
                function(newButton){
                    //Add the new button to the body array
                    if (component.isValid()) {
                        var body = component.find("bodyfill").get("v.body");
                        body.push(newButton);
                        component.find("bodyfill").set("v.body", body);
                    }
                }
            );

	},
    showGraph : function(component, event, helper) {
       //helper.graphReload(component);
       debugger;
       var graph= component.find("bargraph");
       $A.util.toggleClass(graph, "slds-hide");
        
    }
})