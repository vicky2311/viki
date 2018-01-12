({
	doInit : function(component, event, helper) {
		helper.doInit(component, event, helper);
	},
    objectInfoByHistoryId : function(component, event, helper) {
 		var id= event.target.getAttribute("aria-describedby");
				var cmpTarget=component.find(id).getElement();
        $A.util.removeClass(cmpTarget, 'slds-fall-into-ground');
        $A.util.addClass(cmpTarget, 'slds-rise-from-ground');
    },
    objectInfoMouseOver : function(component, event, helper) {
        var id= event.target.getAttribute("aria-describedby");	
       // var cmpTarget=component.find(id).getElement();
        var a = document.getElementById(id);
        $A.util.removeClass(a, 'slds-fall-into-ground');
        $A.util.addClass(a, 'slds-rise-from-ground');
	},
    objectInfoMouseLeave: function(component, event, helper) {
        var id= event.target.getAttribute("aria-describedby");
	//	var cmpTarget=component.find(id).getElement();
         var a = document.getElementById(id);
        $A.util.removeClass(a, 'slds-rise-from-ground');
        $A.util.addClass(a, 'slds-fall-into-ground');
	},
    navigateToMyComponent : function(component, event, helper) {
        // for non-lightning components.
        var accId = event.target.name; 
        var evt = $A.get("e.force:navigateToComponent");        
        evt.setParams({
            componentDef : "c:TimelineLighting",//"c:ActivityHistNew" ,
           /* componentAttributes: {
                Id : accId
            }*/
        });
        evt.fire();
    },
    scriptsLoaded : function(component, event, helper) {
              
        var ctx = component.find("chart").getElement();
        var chart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ["20-Jun", "21-Jun", "22-Jun", "23-Jun", "24-Jun", "25-Jun", "26-Jun"],
      datasets: [
        {
          label: "Dev",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478,456,3455,456],
          onHover: function(){
                alert("sdfsf");
            }
        },
          {
          label: "Production",
          backgroundColor: "#fff345",
          data: [133,221,783,2478,456,3455,456],
            
        onHover: function(){
                alert("sdfsf");
            }
        },
          {
          label: "QA",
          backgroundColor: "#123456",
          data: [133,221,783,2478,456,3455,456],
            
        onClick: function(e){
                alert("llllll");
            }
        }
      ]
        
    },
         options: {
          onClick: function(event) {
               alert("sdfs");
          },
          mouseover: function(event) {
             alert("kkkkkk");
          },
         tooltips: {
            enabled: false
         }
    }
        
        });
        
	}
})