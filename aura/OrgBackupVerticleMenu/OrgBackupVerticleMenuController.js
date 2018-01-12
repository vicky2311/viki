({
	sandmanage:function(component, event, helper){  
        component.find("listViewContainer").set("v.body", []);
            var destination ="markup://c:Backup_OrgSetUp";
            $A.createComponent(
                destination,
                {
                    
                },
                function(newButton){
                    //Add the new button to the body array
                    if (component.isValid()) {
                        var body = component.find("listViewContainer").get("v.body");
                        body.push(newButton);
                        component.find("listViewContainer").set("v.body", body);
                    }
                }
            );
	},
    backupconfig:function(component, event, helper){  
        component.find("listViewContainer").set("v.body", []);
            var destination ="markup://c:Backup_RPO";
            $A.createComponent(
                destination,
                {
                    
                },
                function(newButton){
                    //Add the new button to the body array
                    if (component.isValid()) {
                        var body = component.find("listViewContainer").get("v.body");
                        body.push(newButton);
                        component.find("listViewContainer").set("v.body", body);
                    }
                }
            );
	},
    mappings:function(component, event, helper){  
        component.find("listViewContainer").set("v.body", []);
            var destination ="markup://c:Org_EnvironmentMap";
            $A.createComponent(
                destination,
                {
                    
                },
                function(newButton){
                    //Add the new button to the body array
                    if (component.isValid()) {
                        var body = component.find("listViewContainer").get("v.body");
                        body.push(newButton);
                        component.find("listViewContainer").set("v.body", body);
                    }
                }
            );
	}
})