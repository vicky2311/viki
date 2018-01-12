({
	displayOnSelect : function(component, event, helper) {
        if(component.find("selectItem").get("v.value") == "1"){
         var oauthdepends = component.find("showOptions");
        $A.util.removeClass(oauthdepends,"slds-hide");
        }
		
	}
})