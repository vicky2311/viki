({
	openModel : function(component, event, helper) {
		var model = component.find("wapp");
        var backdrop = component.find("backdrop");
        $A.util.addClass(model, "slds-fade-in-open");
        $A.util.addClass(bacl, "slds-backdrop_open");
	}
})