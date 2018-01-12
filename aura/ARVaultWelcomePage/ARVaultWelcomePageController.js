({
	logout : function(component, event, helper) {
        //We have to call healper class here to clear cache
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