({
	scriptsLoaded : function(component, event, helper) {
    var a =(100-component.get("v.percent"));
        var data = {
            labels: [], 
            datasets: [
                {
                    data: [a, component.get("v.percent")],
                    backgroundColor: [
                        "rgba(255,203,75,.8)",
                        "rgba(143,134,132,.8)"
                    ],
                    hoverBackgroundColor: [
                        "rgba(255,203,75,1)",
                        "rgba(143,134,132,1)"
                    ]                
                }
            ]
        };
        
		var ctx = component.find("chart").getElement();
         var width = ctx.width,
                height = ctx.height;
				var text = "60%",
                textX = Math.round((width) / 2),
                textY = height / 2;

        component.chart = new Chart(ctx,{
            type: 'doughnut',
            data: data,
			options: {
                responsive: true,
                maintainAspectRatio: false
            }

        });
    }
    
})