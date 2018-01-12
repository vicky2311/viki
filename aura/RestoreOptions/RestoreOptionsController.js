({
   updateSelect: function(component, event, helper){
    var opts = [
        { value: "Dev1", label: "Dev1" }, 
        { value: "Dev2", label: "Dev2" }, 
        { value: "Production", label: "Production", selected: true }];
    component.set('v.options', opts);
    //set the new selected value on the component
    component.set('v.selectedValue', 'Production'); 
    //return the selected value
    component.find("mySelect").get("v.value");
},

    loadOptions: function (component, event, helper) {
        var opts = [
            { value: "Dev1", label: "Dev1" },
            { value: "Dev2", label: "Dev2" },
            { value: "Production", label: "Production" }
         ];
         component.set("v.options", opts);
    }
})