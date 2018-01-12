({
	updateChildAttr : function(component, event, helper) {
		var compEvent = cmp.getEvent("sampleComponentEvent");
		// Optional: set some data for the event (also known as event shape)
		// A parameter’s name must match the name attribute
		// of one of the event’s <aura:attribute> tags
		// compEvent.setParams({"myParam" : myValue });
		compEvent.fire();
	},
    handleComponentEvent: function(component, event, helper) {
		alert("hiya");
    }
})