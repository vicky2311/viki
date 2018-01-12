({
	createAlert : function(component, event, helper) {
        //We have to call healper class here to clear cache
		   	 component.find("customAlert").set("v.body", []);
            var destination ="markup://c:Config_createNewAlert";
            $A.createComponent(
                destination,
                {
                    
                },
                function(newButton){
                    //Add the new button to the body array
                    if (component.isValid()) {
                        var body = component.find("customAlert").get("v.body");
                        body.push(newButton);
                        component.find("customAlert").set("v.body", body);
                    }
                }
            );
	}
})