({
	scriptsLoaded : function(component, event, helper) {
              
        var ctx = component.find("chart").getElement();
        var chart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ["1900", "1950", "1999", "2050", "1900", "1950", "1999", "2050", "234"],
      datasets: [
        {
          label: "Africa",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478,456,3455,456,346,12004]
        },
          {
          label: "Africa",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478,456,3455,456,346,12004]
        },
          {
          label: "Africa",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478,456,3455,456,346,12004]
        },
          {
          label: "Africa",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478,456,3455,456,346,12004]
        },
          {
          label: "Africa",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478,456,3455,456,346,12004]
        },
          {
          label: "Africa",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478,456,3455,456,346,12004]
        },
          {
          label: "Africa",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478,456,3455,456,346,12004]
        },
          {
          label: "Africa",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478,456,3455,456,346,12004]
        },
          {
          label: "Africa",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478,456,3455,456,346,12004]
        },
          {
          label: "Africa",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478,456,3455,456,346,12004]
        },
          {
          label: "Africa",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478,456,3455,456,346,12004]
        },
          {
          label: "Africa",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478,456,3455,456,346,12004]
        },
          {
          label: "Africa",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478,456,3455,456,346,12004]
        },
          {
          label: "Africa",
          backgroundColor: "#3e95cd",
          data: [133,221,783,2478,456,3455,456,346,12004]
        }
      ]
    },
    options: {
      title: {
        display: true,
        text: 'Activity'
      }
    }});
        
	}
})