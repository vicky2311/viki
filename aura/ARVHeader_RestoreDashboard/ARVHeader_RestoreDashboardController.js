({
	fireShowGraph : function(component, event, helper){
        
            var graphbtn = component.find("graphBtn");
         	$A.util.toggleClass(graphbtn,"slds-is-selected");
        	var cmpEvent = component.getEvent("displaygraph");
         	debugger;
        	cmpEvent.fire();    
    },
		
	fireShowRestore : function(component, event, helper){
        
            var restorebtn = component.find("restorebtn");
         	$A.util.toggleClass(restorebtn,"slds-is-selected");
        	var cmpEvent = component.getEvent("displayrestore");
         	debugger;
        	cmpEvent.fire();    
    },
})