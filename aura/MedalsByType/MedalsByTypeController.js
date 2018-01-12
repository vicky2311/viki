({
	scriptsLoaded : function(component, event, helper) {

        var data = {
            labels: ["Used", "Avilable"], 
            datasets: [
                {
                    data: [20, 10],
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

            //component.chart.fillText(text, textX, textY);
        component.chart = new Chart(ctx,{
            type: 'doughnut',
            data: data,
			options: {
                responsive: true,
                maintainAspectRatio: false,
                onClick: function(event) {
                    var elements = component.chart.getElementAtEvent(event);
                    if (elements.length === 1) {
						/*var chartEvent = $A.get("e.c:ChartEvent");
                        chartEvent.setParams({
                            data: {
                                year: component.get("v.year"),
                                country: component.get("v.country"),
                                medalType: component.chart.data.labels[elements[0]._index]
                            }
                        });*/
                    }
                }
            }

        });
	},
    
    chartChange: function(component, event, helper) {
        var filters = event.getParam("data");
        helper.olympicData(component, filters);
    }
    
})