public with sharing class TestRemoteSite {

    public String IdParam{get; set;}
    private static String baseURL = 'http://54.202.231.145:8080';
    
    @AuraEnabled
    public static String getBackupHistory () {
    	
        String url = baseURL + '/ARVault/arvault/arvaultconnector/Naresh';
        
        HttpRequest req = new HttpRequest();  Http http = new Http();
        req.setMethod('GET'); 
        req.setEndpoint(url);
        HTTPResponse res = http.send(req);
        //System.debug('dfsf'+res.getBody());
        return res.getBody();
    } 
    
    @AuraEnabled
    public static String getJSONInput(){
        System.debug('getJSONInput');
        String jsonInput = '[{"year":"1996","venue":"Atlanta","countries":[{"country":"USA","gold":44,"silver":32,"bronze":25},{"country":"Russia","gold":26,"silver":21,"bronze":16},{"country":"China","gold":16,"silver":22,"bronze":12},{"country":"UK","gold":1,"silver":8,"bronze":6},{"country":"Germany","gold":20,"silver":18,"bronze":27}]},{"year":"2000","venue":"Sydney","countries":[{"country":"USA","gold":37,"silver":24,"bronze":32},{"country":"Russia","gold":32,"silver":28,"bronze":29},{"country":"China","gold":28,"silver":16,"bronze":14},{"country":"UK","gold":11,"silver":10,"bronze":7},{"country":"Germany","gold":13,"silver":17,"bronze":26}]},{"year":"2004","venue":"Athens","countries":[{"country":"USA","gold":36,"silver":39,"bronze":26},{"country":"Russia","gold":28,"silver":26,"bronze":36},{"country":"China","gold":32,"silver":17,"bronze":14},{"country":"UK","gold":9,"silver":9,"bronze":12},{"country":"Germany","gold":13,"silver":16,"bronze":20}]},{"year":"2008","venue":"Beijing","countries":[{"country":"USA","gold":36,"silver":39,"bronze":36},{"country":"Russia","gold":22,"silver":15,"bronze":23},{"country":"China","gold":48,"silver":21,"bronze":29},{"country":"UK","gold":19,"silver":13,"bronze":15},{"country":"Germany","gold":16,"silver":10,"bronze":15}]},{"year":"2012","venue":"London","countries":[{"country":"USA","gold":46,"silver":28,"bronze":29},{"country":"Russia","gold":20,"silver":19,"bronze":31},{"country":"China","gold":38,"silver":29,"bronze":21},{"country":"UK","gold":29,"silver":17,"bronze":19},{"country":"Germany","gold":11,"silver":19,"bronze":14}]},{"year":"2016","venue":"Rio","countries":[{"country":"USA","gold":46,"silver":37,"bronze":38},{"country":"Russia","gold":19,"silver":17,"bronze":19},{"country":"China","gold":26,"silver":18,"bronze":26},{"country":"UK","gold":27,"silver":23,"bronze":17},{"country":"Germany","gold":17,"silver":10,"bronze":15}]}]';
        return jsonInput;
    }

	@AuraEnabled
     public static List<Object> getAccounts(){
        String url = baseURL + '/ARVault/rest/arvaultconnector/getobjectdata/autorabit.com-5558a514-3c89-4dd6-9321-d9f3c0fc653d/13-Jul-2017%2020-08-42';
        String accountObjectURL = url + '/Account';
         
        HttpRequest req = new HttpRequest();  Http http = new Http();
        req.setMethod('GET'); 
        req.setEndpoint(accountObjectURL);
        HTTPResponse res = http.send(req);
        String jsonInput = '{"accountlist": [' + res.getBody()  + ']}';
        Map<String, Object> mp=  (Map<String, Object>) JSON.deserializeUntyped(jsonInput);
        List<Object> xyz = (List<Object>) mp.get('accountlist');
		/*List<Accounthelp> hlist = new List<Accounthelp>();
        for(Object a:xyz){
             Map<String, Object> mapObj = (Map<String, Object>) a;
             Set<String> keys = mapObj.keySet();
             for(String key: keys){
                Map<String, Object> obj = (Map<String, Object>) mapObj.get(key);
                Accounthelpers help = new Accounthelpers((String)obj.get('OwnerId'), (String) obj.get('Name'), 
                                                         (String)  obj.get('Industry'), (String)  obj.get('AccountNumber'), 
                                                         (String) obj.get('SLA__c'));
                XYZ a1 = new XYZ(key, help);
                Accounthelp h1 = new Accounthelp(a1);
                 hlist.add(h1);
            }             
        }
		System.debug('hList:'+hlist);*/
        return xyz;
    }  
    
    @AuraEnabled
     public static Account getAccountDetail(String Id){
        Account accountObj = [SELECT Id, name, industry, Type, NumberOfEmployees, TickerSymbol, Phone
              FROM Account WHERE Id = :Id ORDER BY createdDate ASC];
         return accountObj;
    }

/*    public class Accounthelp {
        
        public XYZ accounts;
        
        public Accounthelp(XYZ liList) {
            accounts = liList;
        }
    }  
    public class XYZ{
        
        public String rowID;
        public Accounthelpers acc;
        public XYZ(String ID, Accounthelpers obj){
            rowID = ID;
            acc = obj;
        }
    }
public class Accounthelpers {
    //public DateTime LastModifiedDate;
    public String SLA;
    public String Name;
    public String Industry;
    //public String CreatedById;
    //public String TickerSymbol;
    public String OwnerId;
    //public String SLASerialNumber;
    public String AccountNumber;
    	
    public Accounthelpers(String Id, String name, String industry, String accNo, String sla){
        OwnerId = Id; Name= name; Industry = industry; AccountNumber = accNo; SLA = sla;
    }
}*/

    public static void getInfo()
    {
         String jsonInput = 
        '{"accounthelp": [ {"LastModifiedDate": "2017-04-07T06:17:00.000Z", "SLA": "Silver", "Name": "312 Constitution Place Austin, TX 78767 USA", "Industry": "Electronics",'+
            '"CreatedById": "0056F000006jFL3QAM", "TickerSymbol": "EDGE", "OwnerId": "0056F000006jFL3QAM","SLASerialNumber": "2657","AccountNumber": "CD451796"},' +
        '{"LastModifiedDate": "2017-04-07T06:17:00.000Z", "SLA": "Silver", "Name": "2 Place Jussieu", "Industry": "Construction",'+
            '"CreatedById": "0056F000006jFL3QAM", "TickerSymbol": "PYR", "OwnerId": "0056F000006jFL3QAM","SLASerialNumber": "9840", "AccountNumber": "CC213425"}' +
        ']}';  
         System.debug(jsonInput);
     Map<String, Object> mp=  (Map<String, Object> )JSON.deserializeUntyped(jsonInput);
       System.debug(mp.get('accounthelp'));
       
    }
    
}