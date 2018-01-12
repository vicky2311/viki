({
	quickFind : function(component, domNode, helper) {
		 var input, filter, ul, li, a, i;
  	     input = component.find("quickfind").get("v.value");
  	     filter = input.toUpperCase();
   		 ul =  component.find("container").getElements()[0];
   		 li = ul.getElementsByTagName("tr");
  		  for (i = 0; i < li.length; i++) {
               var found=false;
    		    a = li[i].getElementsByTagName("td");
              for (var j = 0; j < a.length; j++) { 
                  if (a[j].innerHTML.toUpperCase().indexOf(filter) > -1) {
                      found = true;
                      break;
                  }
              }
              if(found)
              {
                 li[i].style.display = "";
               } else {
                 li[i].style.display = "none";
               }
    	 }	
	}
})