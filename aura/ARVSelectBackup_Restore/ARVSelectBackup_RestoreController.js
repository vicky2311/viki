({
	showTheRecords : function(component, event, helper) {
		var showrecords = component.find("showrecords");
        $A.util.removeClass(showrecords, "slds-grid");
        showrecords.set("v.body", []);
            var destination ="markup://c:ARVSelectRecords_Restore";
            $A.createComponent(
                destination,
                {
                    
                },
                function(newButton){
                    //Add the new button to the body array
                    if (component.isValid()) {
                        var body = component.find("showrecords").get("v.body");
                        body.push(newButton);
                        component.find("showrecords").set("v.body", body);
                    }
                }
            );
	}
})