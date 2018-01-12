({
		quickFind : function(component, domNode, helper) {
            debugger;        
         var input, filter, ul, li, a, i;

  	     input = component.find("quickfind").get("v.value");
  	     filter = input.toUpperCase();
   		 ul =  component.find("container").getElements()[0];
   		 li = ul.getElementsByTagName("li");
  		  for (i = 0; i < li.length; i++) {
    		    a = li[i].getElementsByTagName("span")[0];
      		  if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
            		li[i].style.display = "block";
        		} else {
          		    li[i].style.display = "none";
        		}
    	 }	
	},
    doInit : function(component, event, helper) {
		helper.doInit(component, event, helper);
	}
})