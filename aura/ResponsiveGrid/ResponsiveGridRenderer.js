({
	// Your renderer method overrides go here
    scriptsLoaded: function(cmp, helper){
        
    },
    afterRender : function(cmp, helper){
        this.superAfterRender();

        if(cmp.get("v.isJqueryLoaded") && cmp.get("v.needToProcessReRenderLogic")) {
            //your logics
         debugger;
          //  cmp.find("activityHistoryGrid").DataTable();
            $("#activityHistoryGrid").DataTable();
            //Finally set the needToProcessReRenderLogic to false, since rerender will be called multiple times
            cmp.set("v.needToProcessReRenderLogic",false); // this will not fire rerender again
        }
    }
})