({
	cancleRegistration : function(component, event, helper) {
		// Back to login Page
        	helper.navigateToLogin(component);
	},
    openModel : function(component, event, helper) {
		var model = component.find("wapp");
        var backdrop = component.find("backdrop");
        helper.getSaveUser(component);
        $A.util.addClass(model, "slds-fade-in-open");
        $A.util.addClass(backdrop, "slds-backdrop_open");
	},
    closeModel : function(component, event, helper) {
		var model = component.find("wapp");
        var backdrop = component.find("backdrop");
        $A.util.removeClass(model, "slds-fade-in-open");
        $A.util.removeClass(backdrop, "slds-backdrop_open");
        helper.navigateToLogin(component);
	}
    
})