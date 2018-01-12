({
	fo : function(component, event, helper) {
        var a =component.find("datepick").getElement();
         var b =component.find("popover").getElement();
        
        debugger;       
         document.getElementById("popover").style.left =a.offsetLeft-a.offsetWidth+"";
       // b.style.left = a.offsetWidth;
        alert("x:"+ document.getElementById("popover").style.left +", y:"+a.offsetWidth);
	}
})