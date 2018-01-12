({
	doInit : function(component, event, helper) {
        debugger;
        helper.getSampleJSON(component);
        
	},
    
    getSampleJSON : function(component){
        var action = component.get("c.getOrgsList");
        action.setCallback(this, function(response) {
            this.doLayout(response, component);
        });
        $A.enqueueAction(action);
   },
    doLayout:function(response, component)
    {
  		  var jsonData = JSON.parse(response.getReturnValue());
              component.set("v.listData",jsonData);
           console.log(jsonData); 
 	},
    postRender : function(component){
       debugger;
   }
})