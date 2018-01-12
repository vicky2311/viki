public class ChartDDController {
    
    public String month{get;set;}
	
    public static List<Data> getXyz(String month){
        //String name ='Jan';
        System.debug('month:'+month);
        return ChartDDController.getMonthData(month);
    } 
    
   public static List<Data> getMonthData(String name){
        List<Data> data = ChartDDController.getChartData();
        List<Data> newData = new List<Data>();
        for(Data d: data){
            System.debug('Name:'+name);
			System.debug('d.Name:'+d.name);            
        	if(d.name == name){
            	System.debug('match found:'+name);
                newData.add(d);
        	}    
        }
        return newData;		        
    }
    
    // Make the chart data available via JavaScript remoting
    @RemoteAction
    public static List<Data> getRemoteData() {
        return ChartDDController.getChartData();
    }

    // The actual chart data; needs to be static to be
    // called by a @RemoteAction method
    public static List<Data> getChartData() {
        List<Data> data = new List<Data>();
        data.add(new Data('Jan', 30, 90, 55));
        data.add(new Data('Feb', 44, 15, 65));
        data.add(new Data('Mar', 25, 32, 75));
        data.add(new Data('Apr', 74, 28, 85));
        data.add(new Data('May', 65, 51, 95));
        data.add(new Data('Jun', 33, 45, 99));
        data.add(new Data('Jul', 92, 82, 30));
        data.add(new Data('Aug', 87, 73, 45));
        data.add(new Data('Sep', 34, 65, 55));
        data.add(new Data('Oct', 78, 66, 56));
        data.add(new Data('Nov', 80, 67, 53));
        data.add(new Data('Dec', 17, 70, 70));
        return data;
    }
    
    
    
    // Wrapper class
    public class Data {
        public String name { get; set; }
        public Integer data1 { get; set; }
        public Integer data2 { get; set; }
        public Integer data3 { get; set; }
        public Data(String name, Integer data1, Integer data2, Integer data3) {
            this.name = name;
            this.data1 = data1;
            this.data2 = data2;
            this.data3 = data3;
        }
    }
}