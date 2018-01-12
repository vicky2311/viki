({
	scriptsLoaded : function(component, event, helper) {
        var pecent = component.get("v.percent");
        var ctx = component.find("chartd").getElement();
        var chart = new Chart(ctx, {
        type: 'horizontalBar',
        animation: {
        onComplete: function () {  
          alert("sdfs")
            ctxl.font = this.scale.font;
            ctxl.fillStyle = this.scale.textColor
            this.datasets.forEach(function (dataset) {
                dataset.bars.forEach(function (bar) {
                    ctxl.fillText(bar.value, bar.x, bar.y);
                });
            })
        }
        },
        data: {
          labels: [""],
          datasets: [
            {
              label: "Dev",
              backgroundColor: "#3e95cd",
                data: [pecent]
            }
          ],
            onHover: function(e){
                alert("sdfsf");
            }
        },
        options: {
            onHover: function(e){
                alert("sdfsf");
            },
            scaleShowLabels : false,
            barShowLabels: true,
         legend: {
            display: false
         },
         tooltips: {
            enabled: false
         }, 
            scales: {
            yAxes: [{ 
                display: false
            }],
            xAxes: [{ 
                  display: false,
                  ticks: {
                        beginAtZero:true,
                        min: 0,
                        max: 100
                    }
            }]
         }
      }
  
	});
}
})