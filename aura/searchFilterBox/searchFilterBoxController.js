({
	myFunction : function(component, event, helper) {
         var input, filter, ul, li, a, i;
  	     input = component.find("myInput")[0].get("v.value");
  	     filter = input.toUpperCase();
   		 ul =  component.find("myUL").getElements()[0];
   		 li = ul.getElementsByTagName("li");
  		  for (i = 0; i < li.length; i++) {
    		    a = li[i].getElementsByTagName("a")[0];
      		  if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
            		li[i].style.display = "block";
        		} else {
          		    li[i].style.display = "none";
        		}
    	 }	
	}
})