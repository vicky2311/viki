public class donutChartController {
    
    Public List<AggregateResult> lstOfOpprotunity{get;set;}
    Public String Jsondata{get;set;}
    
    public donutChartController(){
        //Query on opprtunity to get AggregateResult
        lstOfOpprotunity = [Select count(Id), StageName from Opportunity Group By StageName];
        //Serialize query results and store into string to pass to VF page.
        Jsondata = JSON.serialize(lstOfOpprotunity);
        system.debug('JSon String$$$'+Jsondata);
    }
}