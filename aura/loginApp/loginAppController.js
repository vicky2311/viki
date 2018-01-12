({
	naviageteToBackup: function(component, event, helper) {
		 var orgBackup = component.find("orgBackup");
         $A.util.removeClass(orgBackup,"slds-hide");
         var orgslist = component.find("orgslist");
         $A.util.addClass(orgslist,"slds-hide");
	}
})