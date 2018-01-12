({
	doInit : function(component, event, helper) {
        helper.getSampleJSON(component);
	},
    
    getSampleJSON : function(component){
        var action = component.get("c.getObjectsList");
        action.setCallback(this, function(response) {
            this.doLayout(response, component);
        });
        $A.enqueueAction(action);
       // return '{"rows":[{"vals":[{"val":"Salesforce","cssClass":""},{"val":"SFO","cssClass":""},{"val":"info@Salesforce.com","cssClass":""},{"val":"8602229632","cssClass":"responsiveHide"}]},{"vals":[{"val":"Microsoft","cssClass":""},{"val":"SFO","cssClass":""},{"val":"info@microsoft.com","cssClass":""},{"val":"8602283222","cssClass":"responsiveHide"}]},{"vals":[{"val":"SAP","cssClass":""},{"val":"SFO","cssClass":""},{"val":"info@SAP.com","cssClass":""},{"val":"8600942222","cssClass":"responsiveHide"}]},{"vals":[{"val":"Google","cssClass":""},{"val":"SFO","cssClass":""},{"val":"info@Google.com","cssClass":""},{"val":"8602479222","cssClass":"responsiveHide"}]}],"headers":[{"title":"Client Name","isSortable":false,"dataType":"","cssClass":""},{"title":"Address","isSortable":false,"dataType":"","cssClass":""},{"title":"Email","isSortable":false,"dataType":"","cssClass":""},{"title":"Mobile","isSortable":false,"dataType":"","cssClass":"responsiveHide"}]}';
    },
    doLayout:function(response, component)
    {
  		  var jsonData = JSON.parse(response.getReturnValue());
              component.set("v.gridData",jsonData);
           console.log(jsonData); 
 	}
})