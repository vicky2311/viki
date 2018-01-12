({
	doInit : function(component, event, helper) {
		helper.doInit(component, event, helper);
	},
    setScriptLoaded : function(cmp){
        debugger;
        cmp.set("v.isJqueryLoaded",true);
        cmp.set("v.needToProcessReRenderLogic",true);
        
    }
})