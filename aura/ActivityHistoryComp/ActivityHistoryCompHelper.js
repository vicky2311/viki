({
	doInit : function(component, event, helper) {
        helper.getSampleJSON(component);
	},
    
    getSampleJSON : function(component){
        var action = component.get("c.getBackupHistory");
        action.setParams({
            "top": 10
        });
        action.setCallback(this, function(response) {
            this.doLayout(response, component);
        });
        $A.enqueueAction(action);
    },
    doLayout:function(response, component)
    {
  		  var jsonData = JSON.parse(response.getReturnValue());
              component.set("v.gridData",jsonData);
           console.log(jsonData); 
 	}
})