({
	manageAlert : function(component, event, helper) {
        //We have to call healper class here to clear cache
		   	 component.find("createAlert").set("v.body", []);
            var destination ="markup://c:Config_CustomAlerts";
            $A.createComponent(
                destination,
                {
                    
                },
                function(newButton){
                    //Add the new button to the body array
                    if (component.isValid()) {
                        var body = component.find("createAlert").get("v.body");
                        body.push(newButton);
                        component.find("createAlert").set("v.body", body);
                    }
                }
            );
	},
    selectOptions :  function(component, event, helper) {
        component.find("replaceElements").set("v.body", []);
        debugger;
    		var value = component.find("selectItem").get("v.value");
        if(value == "fieldChange")
            var destination ="markup://c:Config_ObjField";
        else if(value == "threshold")
            var destination = "markup://c:Config_Threshold";
        $A.createComponent(
                destination,
                {
                    
                },
                function(newButton){
                    //Add the new button to the body array
                    if (component.isValid()) {
                        var body = component.find("createAlert").get("v.body");
                        body.push(newButton);
                        component.find("createAlert").set("v.body", body);
                    }
                }
            );
    }
})