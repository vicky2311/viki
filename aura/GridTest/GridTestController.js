({
    doInit:function(component, event, helper){  
        component.find("dashboard").set("v.body", []);
            var destination ="markup://c:DashboardComp";
            $A.createComponent(
                destination,
                {
                    
                },
                function(newButton){
                    //Add the new button to the body array
                    if (component.isValid()) {
                        var body = component.find("dashboard").get("v.body");
                        body.push(newButton);
                        component.find("dashboard").set("v.body", body);
                    }
                }
            );
	},
	rollbackOptionsPage : function(component, event, helper) {
        component.find("dashboard").set("v.body", []);
            var destination ="markup://c:RollbackComp";
            $A.createComponent(
                destination,
                {
                    
                },
                function(newButton){
                    //Add the new button to the body array
                    if (component.isValid()) {
                        var body = component.find("dashboard").get("v.body");
                        body.push(newButton);
                        component.find("dashboard").set("v.body", body);
                    }
                }
            );
    },
    
    registrationPage : function(component, event, helper) {
        component.find("dashboard").set("v.body", []);
            var destination ="markup://c:RegistrationComp";
            $A.createComponent(
                destination,
                {
                    
                },
                function(newButton){
                    //Add the new button to the body array
                    if (component.isValid()) {
                        var body = component.find("dashboard").get("v.body");
                        body.push(newButton);
                        component.find("dashboard").set("v.body", body);
                    }
                }
            );
    },
    dashboardPage: function(component, event, helper) {
        component.find("dashboard").set("v.body", []);
            var destination ="markup://c:DashboardComp";
            $A.createComponent(
                destination,
                {
                    
                },
                function(newButton){
                    //Add the new button to the body array
                    if (component.isValid()) {
                        var body = component.find("dashboard").get("v.body");
                        body.push(newButton);
                        component.find("dashboard").set("v.body", body);
                    }
                }
            );
    },
    summaryPage: function(component, event, helper) {
        component.find("dashboard").set("v.body", []);
            var destination ="markup://c:SummaryComp";
            $A.createComponent(
                destination,
                {
                    
                },
                function(newButton){
                    //Add the new button to the body array
                    if (component.isValid()) {
                        var body = component.find("dashboard").get("v.body");
                        body.push(newButton);
                        component.find("dashboard").set("v.body", body);
                    }
                }
            );
    },
    configPage: function(component, event, helper) {
        component.find("dashboard").set("v.body", []);
            var destination ="markup://c:ConfigComp";
            $A.createComponent(
                destination,
                {
                    
                },
                function(newButton){
                    //Add the new button to the body array
                    if (component.isValid()) {
                        var body = component.find("dashboard").get("v.body");
                        body.push(newButton);
                        component.find("dashboard").set("v.body", body);
                    }
                }
            );
    },
    navToMyComp : function(component, event, helper) {
     var urlEvent = $A.get("e.force:navigateToURL");
        debugger;
    urlEvent.setParams({
       "url": "/006/o"
    });
    urlEvent.fire();
}
        
})