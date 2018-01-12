({
    toggleSpinner: function(cmp) {
        var spinner = cmp.find('spinner');
        var evt = spinner.get("e.toggle");
        
    if(!$A.util.hasClass(spinner, 'hideEl')){
        evt.setParams({ isVisible : false });
     }		
    else {
        evt.setParams({ isVisible : true });
	}
    evt.fire();
    }
})